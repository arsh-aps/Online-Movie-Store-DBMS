------- query for user_acc
SELECT Email,FirstName, LastName, DateOfBirth 
FROM user_acc 
WHERE DateOfBirth LIKE '%6%';

------- query for payment_method
SELECT MethodType, PaymentDetails 
FROM payment_method 
WHERE MethodType = 'Credit';

-------- query for studio
SELECT DISTINCT * 
FROM studio 
ORDER BY StudioName;

--------- query for rental
SELECT 'Movie ID ', MovieID, ' is rented from ', RentalDate, ' to ', RentalExpiry, ' for the price of ', RentalPrice 
FROM rental 
ORDER BY RentalDate ASC;

-------- query for purchase
SELECT * 
FROM purchase 
ORDER BY BuyingPrice DESC, PurchaseDate ASC;

-------- queries for movie
SELECT MovieName, ReleaseYear, Runtime 
FROM movie 
ORDER BY ReleaseYear DESC;

SELECT MovieName, Genre, Resolution, Runtime, MovieRating, ReleaseYear 
FROM movie 
WHERE Genre = 'Animated, Family'
ORDER BY ReleaseYear DESC;

----queries for payment details
SELECT PaymentDetails 
FROM uses 
WHERE Email LIKE '%gmail.com';

----queries for orders
SELECT Email, PaymentDetails, MovieID 
FROM orders 
WHERE Email = 'gregrobinson@yahoo.com'; 

---queries for produces
SELECT MovieID 
FROM produces 
WHERE StudioName = 'Walt Disney Pictures';

---queries fpr  movie_review
SELECT WrittenRev, NumericRating 
FROM movie_review 
WHERE Email = 'gregrobinson@yahoo.com';

---queries for links_to
SELECT MoviePageUrl 
FROM links_to;

--queries for writes
SELECT Email 
FROM writes 
WHERE RevID = 34;

---queries for fanclub membership
SELECT * 
FROM Fanclub_membership;

----queries for subscribes_to
SELECT * 
FROM subscribes_to;

----queries for has
SELECT * 
FROM has;

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


--Advanced Queries
--List MovieID, MovieName which can be purchased but not rented.
SELECT m.MovieID
FROM movie m, purchase p 
WHERE m.MovieID = p.MovieID AND m.MovieID NOT IN (SELECT  r.MovieID FROM rental r);

    
--List maximum, minimum, average price for renting a movie.
SELECT MIN(rentalprice), MAX(rentalprice), AVG(rentalprice) 
FROM rental;

--List user info whose payment method is only credit.
SELECT u.email, u.firstname, u.lastname 
FROM user_acc u 
WHERE NOT EXISTS (SELECT u.email, u.firstname, u.lastname FROM payment_method p, uses s WHERE u.email = s.email AND s.email = p.email AND p.methodtype = 'Debit');

--List movieID and name for PG-13 movies along with number of times it has been ordered.
SELECT o.movieID, m.movieName, count(*) 
FROM orders o, movie m WHERE o.movieId = m.movieID AND m.movieRating = 'PG-13' 
GROUP BY o.movieID, m.movieName ORDER BY movieID;

--List of movies produced by Walt Disney Pictures or have a resolution of 4K HDR.
SELECT m.movieName 
FROM movie m 
WHERE EXISTS (SELECT m.movieName FROM produces p WHERE m.movieId = p.movieId AND p.studioName = 'Walt Disney Pictures') 
UNION (SELECT m.movieName FROM movie m WHERE m.resolution = '4K HDR');


