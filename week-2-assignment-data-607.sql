DROP SCHEMA IF EXISTS movies;
CREATE SCHEMA movies;
USE movies;


DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS reviews;


CREATE TABLE movies(
movie_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
movie_title VARCHAR(1000),
imdb_url VARCHAR(1000)
);

CREATE TABLE reviews(
review_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
reviewer_name VARCHAR(100) NOT NULL,
rating INT NULL CHECK(rating >= 0 AND rating <= 5),
review_text VARCHAR(100),
movie_id INT NOT NULL REFERENCES movies(movie_id)
);


INSERT INTO movies (movie_title, imdb_url)
VALUES ("A Dog\'s Way Home", "https://www.imdb.com/title/tt7616798/");

INSERT INTO movies (movie_title, imdb_url)
VALUES ("Glass", "https://www.imdb.com/title/tt6823368/");

INSERT INTO movies (movie_title, imdb_url)
VALUES ("Escape Room", "https://www.imdb.com/title/tt5886046/");

INSERT INTO movies (movie_title, imdb_url)
VALUES ("Vice", "https://www.imdb.com/title/tt6266538/");

INSERT INTO movies (movie_title, imdb_url)
VALUES ("The Mule", "https://www.imdb.com/title/tt7959026/");

INSERT INTO movies (movie_title, imdb_url)
VALUES ("Spider-Man: Into the Spider-Verse", "https://www.imdb.com/title/tt4633694/");



INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","5", "I have 3 dogs, so this hit very close to home for me!", 1);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","4", "After a few duds, M. Night Shamaylan really did a good job on this one.", 2);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","2", "I don\'t particularly like horror movies, so I'll give this one a mediocre rating.", 3);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","4", "An amazing look at American History.  I tiny bit boring at times, though.", 4);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","3", "A little slow, but I would probably watch it again on cable.", 5);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Cathy Ma","4", "Excellent take on the often over-done superhero movies.  Animation was great!", 6);



INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","3", "A little cheesy for me, even though I love dogs.", 1);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","3", "Close to a 4, but I'll round down because its not be prefered genre.", 2);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","1", "This movie was trash.", 3);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","5", "Extra dope!", 4);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","5", "Clint Eastwood is still that dude.", 5);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("John Smith","2", "Another spiderman movie. Boring.", 6);



INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","5", "Pulls at your heart strings.", 1);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","5", "Awesome!", 2);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","2", "Meh, not so great.", 3);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","5", "Very good, Oscar worthy for sure.", 4);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","3", "Always love Eastwood, but was a bit slow.", 5);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Nancy Sansone","3", "Pretty cool.", 6);


INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","3", "It was OK, I've seen better", 1);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","2", "Meh, not so good.", 2);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","4", "Nice, would see again.", 3);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","5", "Favorite of the year.", 4);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","3", "So so, could have been better", 5);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Maggie Kidder","4", "Very Solid performance all around.", 6);



INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","4", "Oustanding work, could have used some tighter editing though.", 1);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","5", "My kind of movie.", 2);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","2", "Bleh, no thank you.", 3);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","5", "Cheney sure was a piece of work.", 4);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","2", "Not my style.", 5);

INSERT INTO reviews (reviewer_name, rating, review_text, movie_id)
VALUES ("Sandy Solanger","2", "Im done with superhero movies.", 6);




SELECT movies.movie_id, movies.movie_title, movies.imdb_url, reviews.review_id, reviews.reviewer_name, reviews.rating, reviews.review_text
FROM movies LEFT JOIN reviews
ON movies.movie_id = reviews.movie_id;