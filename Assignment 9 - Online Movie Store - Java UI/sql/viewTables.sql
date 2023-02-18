CREATE VIEW for_the_family AS (SELECT moviename FROM movie WHERE genre LIKE '%Family%');

CREATE VIEW avg_user_scores AS (SELECT l.movieid, AVG(numericrating) AS Avg_User_rating FROM movie_review m, links_to l WHERE l.revid = m.revid GROUP BY movieid);

CREATE VIEW studios_and_movies AS (SELECT m.moviename, p.studioname FROM movie m, produces p WHERE m.movieid = p.movieid);