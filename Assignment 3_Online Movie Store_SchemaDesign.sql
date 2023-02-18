CREATE TABLE user_acc (

Email VARCHAR2(254) PRIMARY KEY,

FirstName VARCHAR2(100) NOT NULL,

LastName VARCHAR2(100) NOT NULL,

DateOfBirth DATE NOT NULL,	

Password VARCHAR2(100) NOT NULL

);


CREATE TABLE payment_method (

MethodType VARCHAR(16),

PaymentMethodID VARCHAR2(100) PRIMARY KEY,

Email VARCHAR2(254) REFERENCES user_acc(Email)

);


CREATE TABLE uses (

Email VARCHAR2(254) REFERENCES user_acc(Email),

PaymentMethodID VARCHAR(100) REFERENCES 

payment_method(PaymentMethodID),

PRIMARY KEY (Email, PaymentMethodID)

);


CREATE TABLE movie (

MovieID VARCHAR(100) PRIMARY KEY,

MovieName VARCHAR2(100),

Genre VARCHAR2(50) NOT NULL,

Director VARCHAR2(100) NOT NULL,

MovieRating NUMBER NOT NULL,

ReleaseYear DATE NOT NULL,

Resolution VARCHAR2(10) NOT NULL,

Runtime VARCHAR2(20) NOT NULL,

Synopsis VARCHAR2(1000),

MovieCast VARCHAR2(1000)

);


CREATE TABLE orders (

Email VARCHAR(254),

PaymentMethodID VARCHAR(100),

MovieID VARCHAR2(100) REFERENCES movie(MovieID),

PRIMARY KEY (Email, PaymentMethodID, MovieID),

FOREIGN KEY (Email, PaymentMethodID) REFERENCES uses(Email, PaymentMethodID)

);


CREATE TABLE studio (

StudioName VARCHAR2(100) PRIMARY KEY,

ProducedMovies VARCHAR2(1000)

);


CREATE TABLE produces (

MovieID VARCHAR2(100) REFERENCES movie(MovieID),

StudioName VARCHAR2(100) REFERENCES studio(StudioName),

PRIMARY KEY (StudioName, MovieID)
);


CREATE TABLE rental (

MovieID VARCHAR2(100) PRIMARY KEY,

RentalPrice NUMBER NOT NULL,

RentalDate  DATE,

RentalExpiry DATE

);


CREATE TABLE purchase (

 MovieID VARCHAR2(100) PRIMARY KEY,

 BuyingPrice NUMBER NOT NULL,

 PurchaseDate DATE

);


CREATE TABLE favourites (

FavID VARCHAR2(100) PRIMARY KEY,

MovieID VARCHAR2(100) REFERENCES movie(MovieID),

Email VARCHAR2(254) REFERENCES user_acc(Email)
);


CREATE TABLE links_to (

FavID VARCHAR2(100) REFERENCES favourites(FavID),

MovieID VARCHAR2(100) REFERENCES movie(MovieID),

PRIMARY KEY(FavID, MovieID)

);


CREATE TABLE adds (

FavID VARCHAR2(100) REFERENCES favourites(FavID),

MovieID VARCHAR2(100) REFERENCES movie(MovieID),

Email VARCHAR2(254) REFERENCES user_acc(Email),

PRIMARY KEY(Email, FavID, MovieID)

);


CREATE TABLE fanclub_membership (

MembershipID VARCHAR2(100) PRIMARY KEY,

PurchaseDiscount NUMBER,

SpecialOffers VARCHAR(200)
);


CREATE TABLE subscribes_to (

MembershipID VARCHAR2(100) REFERENCES fanclub_membership(MembershipID),

Email VARCHAR2(254),

PaymentMethodID VARCHAR2(100),

SubscriptionTime NUMBER NOT NULL,

SubscriptionPrice Float(2) NOT NULL,

PRIMARY KEY (MembershipID, Email, PaymentMethodID),

FOREIGN KEY (Email, PaymentMethodID) REFERENCES uses(Email, PaymentMethodID)

);


CREATE TABLE has (

MembershipID VARCHAR2(100) REFERENCES Fanclub_membership(MembershipID),

StudioName VARCHAR2(100) REFERENCES studio(StudioName),

PRIMARY KEY(MembershipID, StudioName)
);

