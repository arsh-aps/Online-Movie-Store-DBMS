ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD';

INSERT INTO user_acc VALUES
('john.bob@gmail.com', 'John', 'Bob', DATE '2000-01-16', 'ApplePie');

INSERT INTO user_acc VALUES
('tommyross@gmail.com', 'Tommy', 'Ross', DATE '1986-04-17', 'TorontoMet');

Insert INTO user_acc VALUES
('franklynmoon@yahoo.com', 'Franklyn', 'Moon', DATE '1975-12-30', 'AppleCiderVinegar');

INSERT INTO user_acc VALUES
('amylucas@gmail.com', 'Amy', 'Lucas', DATE '2005-03-18', 'MapleSyrup');

INSERT INTO user_acc VALUES
('rosalindaflemming@gmail.com', 'Rosalinda', 'Flemming', DATE '2008-04-04', 'KoolaidJammers');

INSERT INTO user_acc VALUES
('marioodonnell@gmail.com', 'Mario', 'Odonnell', DATE '1985-10-08', 'Iphone14ProMax');

INSERT INTO user_acc VALUES
('courtneypage@gmail.com', 'Courney', 'Page', DATE '1993-02-28', 'StudentLearningCentre');

INSERT INTO user_acc VALUES
('beverlymeadows@gmail.com', 'Bevery', 'Meadows', DATE '1969-09-18', 'Ghostbusters1234');

INSERT INTO user_acc VALUES
('lesleywhite@yahoo.com', 'Lesley', 'White', DATE '2001-11-13', 'SamsungGalaxy');

INSERT INTO user_acc VALUES
('gregrobinson@yahoo.com', 'Greg', 'Robinson', DATE '1972-05-15', 'StarWars');

------------------------------------------

INSERT INTO studio VALUES
('Walt Disney Pictures', 'The Lion King, Frozen, Tangled, Big Hero 6');

INSERT INTO studio VALUES
('Warner Bros', 'The Matrix, Harry Potter and the Philosopher''s Stone');

INSERT INTO studio VALUES
('Paramount Pictures', 'Mission: Impossible, Interstellar, Top Gun: Maverick');

INSERT INTO studio VALUES
('Columbia Pictures', 'Men In Black');

INSERT INTO studio VALUES
('DreamWorks Animation', 'Madagascar, Kung Fu Panda, Shrek');

INSERT INTO studio VALUES
('Blue Sky Studios', 'Ice Age');

INSERT INTO studio VALUES
('20th Century Studios', 'Night At the Museum, Avatar, Independence Day');

INSERT INTO studio VALUES
('Lionsgate Films', 'The Hunger Games, Knives Out');

INSERT INTO studio VALUES
('Universal Pictures', 'Despicable Me');
---------------------------------------------------
INSERT INTO produces VALUES
(1, 'Walt Disney Pictures');

INSERT INTO produces VALUES
(2, 'Walt Disney Pictures');

INSERT INTO produces VALUES
(3, 'Walt Disney Pictures');

INSERT INTO produces VALUES
(4, 'Walt Disney Pictures');

INSERT INTO produces VALUES
(5, 'Warner Bros');

INSERT INTO produces VALUES
(6, 'Warner Bros');

INSERT INTO produces VALUES
(7, 'Paramount Pictures');

INSERT INTO produces VALUES
(8, 'Paramount Pictures');

INSERT INTO produces VALUES
(9, 'DreamWorks Animation');

INSERT INTO produces VALUES
(10, 'Blue Sky Studios');

INSERT INTO produces VALUES
(11, 'DreamWorks Animation');

INSERT INTO produces VALUES
(12, 'DreamWorks Animation');

INSERT INTO produces VALUES
(13, 'Paramount Pictures');

INSERT INTO produces VALUES
(14, '20th Century Studios');

INSERT INTO produces VALUES
(15, '20th Century Studios');

INSERT INTO produces VALUES
(16, '20th Century Studios');

INSERT INTO produces VALUES
(17, 'Lionsgate Films');

INSERT INTO produces VALUES
(18, 'Lionsgate Films');

INSERT INTO produces VALUES
(19, 'Universal Pictures');

INSERT INTO produces VALUES
(20, 'Columbia Pictures');
--------------------------------------------
--Frozen, Walt Disney Studios
INSERT INTO purchase VALUES
(1, 24.99, DATE '2022-09-24');

-- The Matrix, Warner Bros
INSERT INTO purchase VALUES
(2, 15.99, DATE '2022-09-25');

--Frozen, Walt Disney Pictures
INSERT INTO purchase VALUES
(3, 24.99, DATE '2022-09-25');

--Interstellar, Paramount Pictures
INSERT INTO purchase VALUES
(4, 16.99, DATE '2022-09-26');

--Big Hero 6, Walt Disney Pictures
INSERT INTO purchase VALUES
(5, 13.99, DATE '2022-09-27');

--Frozen, Walt Disney Pictures
INSERT INTO purchase VALUES
(6, 13.99, DATE '2022-09-27');

--The Matrix, Warner Bros
INSERT INTO purchase VALUES
(7, 15.99, DATE '2022-09-28');

--Ice Age, Blue Sky Studios
INSERT INTO purchase VALUES
(8, 14.99, DATE '2022-09-29');

--Men in Black, Columbia Pictures
INSERT INTO purchase VALUES
(9, 6.99, DATE '2022-09-30');

--Madagascar, DreamWorks Animation
INSERT INTO purchase VALUES
(10, 12.99, DATE '2022-10-01');

--The Lion King, Walt Disney Pictures
INSERT INTO purchase VALUES
(11, 24.99, DATE '2022-10-01');

--Avatar, 20th Century Studios
INSERT INTO purchase VALUES
(12, 9.99, DATE '2022-10-02');

--Tangled, Walt Disney Pictures
INSERT INTO purchase VALUES
(13, 24.99, DATE '2022-10-03');

--Kung Fu Panda, DreamWorks Animation
INSERT INTO purchase VALUES
(14, 12.99, DATE '2022-10-04');

--Ice Age, Blue Sky Studios
INSERT INTO purchase VALUES
(15, 14.99, DATE '2022-10-04');

-- -----------------------------------------------------------------------------------------------------------------------------------------------

--The Lion King, Walt Disney Pictures
INSERT INTO rental VALUES
(1, 4.99, TIMESTAMP '2022-09-24 23:14:16', TIMESTAMP '2022-10-08 23:14:16');

--Night at the Museum, 20th Century Studios
INSERT INTO rental VALUES
(2, 4.99, TIMESTAMP '2022-09-25 13:05:19', TIMESTAMP '2022-10-09 13:05:19');

--Knives Out, Lionsgate Films
INSERT INTO rental VALUES
(3, 3.99, TIMESTAMP '2022-09-25 08:34:34', TIMESTAMP '2022-10-09 08:34:34');

--Despicable Me, Universal Pictures
INSERT INTO rental VALUES
(4, 2.99, TIMESTAMP '2022-09-28 12:43:12', TIMESTAMP '2022-10-12 12:43:12');

--Knives Out, Lionsgate Films
INSERT INTO rental VALUES
(5, 2.99, TIMESTAMP '2022-09-29 18:35:12', TIMESTAMP '2022-10-13 18:35:12');

--Night at the Museum, 20th Century Studios
INSERT INTO rental VALUES
(6, 4.99, TIMESTAMP '2022-09-29 15:56:14', TIMESTAMP '2022-10-13 15:56:14');

--Mission: Impossible, Paramount Pictures
INSERT INTO rental VALUES
(7, 3.99, TIMESTAMP '2022-09-30 22:16:39', TIMESTAMP '2022-10-14 22:16:39');

--Shrek, Dreamworks Animation
INSERT INTO rental VALUES
(8, 4.99, TIMESTAMP '2022-09-30 16:53:23', TIMESTAMP '2022-10-14 16:53:23');

--Shrek, Dreamworks Animation
INSERT INTO rental VALUES
(9, 4.99, TIMESTAMP '2022-10-01 17:12:54', TIMESTAMP '2022-10-15 17:12:54');

--The Hunger Games, Lionsgate Films
INSERT INTO rental VALUES
(10, 3.99, TIMESTAMP '2022-10-02 19:13:43', TIMESTAMP '2022-10-16 19:13:43');

-- -----------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO payment_method VALUES
(4894842049204922, 'Credit', 'john.bob@gmail.com');

INSERT INTO payment_method VALUES
(5384048443249893, 'Debit', 'john.bob@gmail.com');

INSERT INTO payment_method VALUES
(5455838554939584, 'Debit', 'tommyross@gmail.com');

INSERT INTO payment_method VALUES
(8748535454355090, 'Credit', 'franklynmoon@yahoo.com');

INSERT INTO payment_method VALUES
(4398554454355454, 'Credit', 'amylucas@gmail.com');

INSERT INTO payment_method VALUES
(9989545499005495, 'Debit', 'amylucas@gmail.com');

INSERT INTO payment_method VALUES
(5734535454350990, 'Debit', 'rosalindaflemming@gmail.com');

INSERT INTO payment_method VALUES
(9099434554355435, 'Credit', 'marioodonnell@gmail.com');

INSERT INTO payment_method VALUES
(0394040454353545, 'Debit', 'marioodonnell@gmail.com');

INSERT INTO payment_method VALUES
(5835593459409899, 'Debit', 'courtneypage@gmail.com');

INSERT INTO payment_method VALUES
(9458535409335549, 'Debit', 'beverlymeadows@gmail.com');

INSERT INTO payment_method VALUES
(7878989898984355, 'Credit', 'beverlymeadows@gmail.com');

INSERT INTO payment_method VALUES
(8494530385744204, 'Credit', 'lesleywhite@yahoo.com');

INSERT INTO payment_method VALUES
(7593932453959204, 'Debit', 'lesleywhite@yahoo.com');

INSERT INTO payment_method VALUES
(0495039465740343, 'Credit', 'gregrobinson@yahoo.com');

INSERT INTO payment_method VALUES
(9392893840405445, 'Debit', 'gregrobinson@yahoo.com');

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO uses VALUES
('john.bob@gmail.com', 4894842049204922);

INSERT INTO uses VALUES
('john.bob@gmail.com', 5384048443249893);

INSERT INTO uses VALUES
('tommyross@gmail.com', 5455838554939584);

INSERT INTO uses VALUES
('franklynmoon@yahoo.com', 8748535454355090);

INSERT INTO uses VALUES
('amylucas@gmail.com', 4398554454355454);

INSERT INTO uses VALUES
('amylucas@gmail.com', 9989545499005495);

INSERT INTO uses VALUES
('rosalindaflemming@gmail.com', 5734535454350990);

INSERT INTO uses VALUES
('marioodonnell@gmail.com', 9099434554355435);

INSERT INTO uses VALUES
('marioodonnell@gmail.com', 0394040454353545);

INSERT INTO uses VALUES
('courtneypage@gmail.com', 5835593459409899);

INSERT INTO uses VALUES
('beverlymeadows@gmail.com',9458535409335549);

INSERT INTO uses VALUES
('beverlymeadows@gmail.com', 7878989898984355);

INSERT INTO uses VALUES
('lesleywhite@yahoo.com', 8494530385744204);

INSERT INTO uses VALUES
('lesleywhite@yahoo.com', 7593932453959204);

INSERT INTO uses VALUES
('gregrobinson@yahoo.com', 0495039465740343);

INSERT INTO uses VALUES
('gregrobinson@yahoo.com', 9392893840405445);

-----Orders
INSERT INTO orders VALUES
('john.bob@gmail.com', 4894842049204922, 2);

INSERT INTO orders VALUES
('john.bob@gmail.com', 5384048443249893, 5);

INSERT INTO orders VALUES
('john.bob@gmail.com', 4894842049204922, 1);

INSERT INTO orders VALUES
('john.bob@gmail.com', 5384048443249893, 15);

INSERT INTO orders VALUES
('tommyross@gmail.com', 5455838554939584, 2);

INSERT INTO orders VALUES
('franklynmoon@yahoo.com', 8748535454355090, 8);

INSERT INTO orders VALUES
('franklynmoon@yahoo.com', 8748535454355090, 4);

INSERT INTO orders VALUES
('franklynmoon@yahoo.com', 8748535454355090, 18);

INSERT INTO orders VALUES
('amylucas@gmail.com', 9989545499005495, 2);

INSERT INTO orders VALUES
('amylucas@gmail.com', 9989545499005495, 5);

INSERT INTO orders VALUES
('amylucas@gmail.com', 4398554454355454, 19);

INSERT INTO orders VALUES
('rosalindaflemming@gmail.com', 5734535454350990, 10);

INSERT INTO orders VALUES
('rosalindaflemming@gmail.com', 5734535454350990, 18);

INSERT INTO orders VALUES
('marioodonnell@gmail.com', 9099434554355435, 20);

INSERT INTO orders VALUES
('marioodonnell@gmail.com', 9099434554355435, 9);

INSERT INTO orders VALUES
('marioodonnell@gmail.com', 9099434554355435, 15);

INSERT INTO orders VALUES
('courtneypage@gmail.com', 5835593459409899, 1);

INSERT INTO orders VALUES
('courtneypage@gmail.com', 5835593459409899, 14);

INSERT INTO orders VALUES
('courtneypage@gmail.com', 5835593459409899, 7);

INSERT INTO orders VALUES
('beverlymeadows@gmail.com', 7878989898984355, 3);

INSERT INTO orders VALUES
('beverlymeadows@gmail.com', 7878989898984355, 12);

INSERT INTO orders VALUES
('lesleywhite@yahoo.com', 7593932453959204, 11);

INSERT INTO orders VALUES
('lesleywhite@yahoo.com', 7593932453959204, 12);

INSERT INTO orders VALUES
('gregrobinson@yahoo.com', 0495039465740343, 10);

INSERT INTO orders VALUES
('gregrobinson@yahoo.com', 0495039465740343, 17);


-------Movie Review
INSERT INTO movie_review VALUES
(1, 'It was not for me', 2, 'gregrobinson@yahoo.com');

INSERT INTO movie_review VALUES
(7, 'I fell asleep watching this, nice', 5, 'gregrobinson@yahoo.com');

INSERT INTO movie_review VALUES
(11, 'Wow, amazing, wow, amazing', 10, 'beverlymeadows@gmail.com');

INSERT INTO movie_review VALUES
(34, 'They''ve outdone themselves yet again! A great watch for the family', 10, 'marioodonnell@gmail.com');


-----writes
INSERT INTO writes VALUES
(1, 'gregrobinson@yahoo.com');

INSERT INTO writes VALUES
(7, 'gregrobinson@yahoo.com');

INSERT INTO writes VALUES
(11, 'beverlymeadows@gmail.com');

INSERT INTO writes VALUES
(34, 'marioodonnell@gmail.com');

----links to
INSERT INTO links_to VALUES
(1, 10, 'https://onlinemoviestore.ca/ice+age');

INSERT INTO links_to VALUES
(7, 17, 'https://onlinemoviestore.ca/the+hunger+games');

INSERT INTO links_to VALUES
(11, 12, 'https://onlinemoviestore.ca/shrek');

INSERT INTO links_to VALUES
(34, 9, 'https://onlinemoviestore.ca/madagascar');

------fanclub membership
INSERT INTO fanclub_membership VALUES
(1, 2.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO fanclub_membership VALUES
(2, 2.00, 10.00, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO fanclub_membership VALUES
(3, 1.49, 8.99, '$2 Off Despicable Me', NULL, DATE '2022-09-28', DATE '2022-10-03', NULL, NULL);

INSERT INTO fanclub_membership VALUES
(4, 1.49, 7.99, NULL, NULL, NULL, NULL, NULL, NULL);

INSERT INTO fanclub_membership VALUES
(5, 2.00, 5.99, NULL, '$8 Off Men in Black', NULL, NULL, DATE '2022-09-28', DATE '2022-10-02');

INSERT INTO fanclub_membership VALUES
(6, 0.99, 6.99, NULL, 'BUY 1 GET 1 FREE', NULL, NULL, DATE '2022-09-29', DATE '2022-10-05');

-----SUBSCRIBES_TO
INSERT INTO subscribes_to VALUES
(1, 'franklynmoon@yahoo.com', 8748535454355090, 3, 9.99, DATE '2022-08-17', DATE '2022-11-17');

INSERT INTO subscribes_to VALUES
(2, 'amylucas@gmail.com', 9989545499005495, 3, 9.99, DATE '2022-08-19', DATE '2022-08-19');

INSERT INTO subscribes_to VALUES
(3, 'amylucas@gmail.com', 9989545499005495, 6, 14.99, DATE '2022-05-22', DATE '2022-11-22');

INSERT INTO subscribes_to VALUES
(4, 'rosalindaflemming@gmail.com', 5734535454350990, 1, 3.99, DATE '2022-10-20', DATE '2022-11-20');

INSERT INTO subscribes_to VALUES
(5, 'marioodonnell@gmail.com', 9099434554355435, 12, 19.99, DATE '2022-01-15', DATE '2023-01-15');

INSERT INTO subscribes_to VALUES
(6, 'courtneypage@gmail.com', 5835593459409899, 6, 14.99, DATE '2022-06-12', DATE '2022-12-12');

-----HAS
INSERT INTO has VALUES
(1, 'Walt Disney Pictures');

INSERT INTO has VALUES
(2, 'Walt Disney Pictures');

INSERT INTO has VALUES
(3, 'Universal Pictures');

INSERT INTO has VALUES
(4, 'Lionsgate Films');

INSERT INTO has VALUES
(5, 'Columbia Pictures');

INSERT INTO has VALUES
(6, '20th Century Studios');

COMMIT;
