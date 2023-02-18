SELECT Email,FirstName, LastName, DateOfBirth FROM user_acc WHERE DateOfBirth LIKE '%6%';

SELECT MethodType, PaymentDetails FROM payment_method WHERE MethodType = 'Credit';

-------- query for studio
SELECT DISTINCT * FROM studio ORDER BY StudioName;

--------- query for rental
SELECT 'Movie ID ', MovieID, ' is rented from ', RentalDate, ' to ', RentalExpiry, ' for the price of ', RentalPrice FROM rental ORDER BY RentalDate ASC;

-------- query for purchase
SELECT * FROM purchase ORDER BY BuyingPrice DESC, PurchaseDate ASC;

-------- queries for movie
SELECT MovieName, ReleaseYear, Runtime FROM movie ORDER BY ReleaseYear DESC;

SELECT MovieName, Genre, Resolution, Runtime, MovieRating, ReleaseYear FROM movie WHERE Genre = 'Animated, Family' ORDER BY ReleaseYear DESC;

----queries for payment details
SELECT PaymentDetails FROM uses WHERE Email LIKE '%gmail.com';

----queries for orders
SELECT Email, PaymentDetails, MovieID FROM orders WHERE Email = 'gregrobinson@yahoo.com'; 

---queries for produces
SELECT MovieID FROM produces WHERE StudioName = 'Walt Disney Pictures';

---queries fpr  movie_review
SELECT WrittenRev, NumericRating FROM movie_review WHERE Email = 'gregrobinson@yahoo.com';

---queries for links_to
SELECT MoviePageUrl FROM links_to;

--queries for writes
SELECT Email FROM writes WHERE RevID = 34;

---queries for fanclub membership
SELECT * FROM Fanclub_membership;

----queries for subscribes_to
SELECT * FROM subscribes_to;

----queries for has
SELECT * FROM has;

--List Names of people who have ordered the movie 'Frozen'
SELECT FirstName, LastName
FROM orders o, user_acc u
WHERE MovieID=2 AND u.Email = o.Email
ORDER BY FirstName ASC;

--List Emails, Movie Name and Movie Rating of people who gave movies a rating of more than or equal to 5.
SELECT u.Email, m.MovieName, mr.NumericRating
FROM user_acc u, writes w, movie_review mr, links_to lt, movie m
WHERE mr.NumericRating >=5 AND u.Email = w.Email AND w.RevID = mr.RevID AND mr.RevID = lt.RevID AND lt.MovieID = m.MovieID
ORDER BY mr.NumericRating DESC;

--List the Emails and Names of people who have subscribed to the Studio 'Walt Disney Animation'
SELECT u.Email, u.FirstName, u.LastName
FROM user_acc u, subscribes_to st, Fanclub_membership fm, has h
WHERE h.StudioName = 'Walt Disney Pictures' AND u.Email = st.Email AND st.MembershipID = fm.MembershipID AND fm.MembershipID = h.MembershipID
ORDER BY Email ASC;


