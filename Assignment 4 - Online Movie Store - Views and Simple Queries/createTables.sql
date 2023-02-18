ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';
CREATE TABLE user_acc (
	Email VARCHAR2(254) PRIMARY KEY,
	FirstName VARCHAR2(100) NOT NULL,
	LastName VARCHAR2(100) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Password VARCHAR2(100) NOT NULL);


CREATE TABLE payment_method (
	PaymentDetails NUMBER PRIMARY KEY,
	MethodType VARCHAR2(16),
	Email VARCHAR2(254) REFERENCES user_acc(Email));


CREATE TABLE uses (
	Email VARCHAR2(254) REFERENCES user_acc(Email),
	PaymentDetails NUMBER REFERENCES payment_method(PaymentDetails),
	PRIMARY KEY (Email, PaymentDetails));


CREATE TABLE movie (
	MovieID NUMBER PRIMARY KEY,
	MovieName VARCHAR2(100) NOT NULL,
	Genre VARCHAR2(200) NOT NULL,
	Director VARCHAR2(100) NOT NULL,
	MovieRating VARCHAR2(10) NOT NULL,
	ReleaseYear NUMBER NOT NULL,
	Resolution VARCHAR2(10) NOT NULL,
	Runtime VARCHAR2(20) NOT NULL,
	Synopsis VARCHAR2(2000),
	MovieCast VARCHAR2(1000));


CREATE TABLE orders (
	Email VARCHAR2(254),
	PaymentDetails NUMBER,
	MovieID NUMBER REFERENCES movie(MovieID),
	PRIMARY KEY (Email, PaymentDetails, MovieID),
	FOREIGN KEY (Email, PaymentDetails) REFERENCES uses(Email, PaymentDetails));


CREATE TABLE studio (
	StudioName VARCHAR2(100) PRIMARY KEY,
	ProducedMovies VARCHAR2(1000));


CREATE TABLE produces (
	MovieID NUMBER REFERENCES movie(MovieID),
	StudioName VARCHAR2(100) REFERENCES studio(StudioName),
	PRIMARY KEY (StudioName, MovieID));


CREATE TABLE rental (
	MovieID NUMBER REFERENCES movie(MovieID),
	RentalPrice NUMBER NOT NULL,
	RentalDate DATE,
	RentalExpiry DATE,
	--RentalPeriod NUMBER DEFAULT 14,
	PRIMARY KEY (MovieID));


CREATE TABLE purchase (
	MovieID NUMBER REFERENCES movie(MovieID),
	BuyingPrice Float(2) NOT NULL,
	PurchaseDate DATE);


CREATE TABLE movie_review (
	RevID NUMBER PRIMARY KEY,
	WrittenRev VARCHAR2(400),
	NumericRating NUMBER,
	Email VARCHAR2(254) REFERENCES user_acc(Email)
	);


CREATE TABLE links_to (
	RevID NUMBER REFERENCES movie_review(RevID),
	MovieID NUMBER REFERENCES movie(MovieID),
	MoviePageUrl VARCHAR2(2000),
	PRIMARY KEY(RevID, MovieID));


CREATE TABLE writes (
	RevID NUMBER REFERENCES movie_review(RevID),
	Email VARCHAR2(254) REFERENCES user_acc(Email),
	PRIMARY KEY(Email, RevID));


CREATE TABLE fanclub_membership (
	MembershipID NUMBER PRIMARY KEY,
	RentalDiscount FLOAT(2),
	PurchaseDiscount FLOAT(2),
	--DiscountPurchaseStartDate TIMESTAMP(0),
	--DiscountPurchaseEndDate TIMESTAMP(0),
	--DiscountRentalStartDate TIMESTAMP(0),
	--DiscountRentalEndDate TIMESTAMP(0),
	RentalSpecialOffers VARCHAR(200),
	PurchaseSpecialOffers VARCHAR(200),
	OffersRentalStartDate DATE,
	OffersRentalEndDate DATE,
	OffersPurchaseStartDate DATE,
	OffersPurchaseEndDate DATE);



CREATE TABLE subscribes_to (
	MembershipID NUMBER REFERENCES fanclub_membership(MembershipID),
	Email VARCHAR2(254),
	PaymentDetails NUMBER,
	SubscriptionTime NUMBER,
	SubscriptionPrice Float(2),
	SubscriptionDate DATE,
	SubscriptionExpiry DATE,
	FOREIGN KEY (Email,PaymentDetails) REFERENCES uses(Email,PaymentDetails),
	PRIMARY KEY (MembershipID, Email, PaymentDetails));

CREATE TABLE has (
	MembershipID NUMBER REFERENCES Fanclub_membership(MembershipID),
	StudioName VARCHAR2(100) REFERENCES studio(StudioName),
	PRIMARY KEY(MembershipID, StudioName));

