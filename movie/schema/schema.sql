
CREATE TABLE Usser(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    username VARCHAR(100),
    password VARCHAR(100),
    birthday DATE
);

CREATE TABLE genre(
    genre_id INT PRIMARY KEY UNIQUE NOT NULL,
    genre_name TEXT
);

CREATE TABLE movie(
    movie_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    movie_name VARCHAR(100) NOT NULL,
    movie_year INT NOT NULL,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

CREATE TABLE fav_movie(
    id INT,
    FOREIGN KEY (id) REFERENCES Usser(id),
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    PRIMARY KEY (id, movie_id)
);

CREATE TABLE review (
    review_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id INT,
    FOREIGN KEY (id) REFERENCES Usser(id),
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    review_stars INT CHECK (review_stars BETWEEN 1 AND 5),
    review_text TEXT,
    UNIQUE (id, movie_id)
);

INSERT INTO genre (genre_id, genre_name) VALUES 
(1, 'action'),
(2, 'comedy'),
(3, 'drama'),
(4, 'scifi'),
(5, 'fantasy'),
(6, 'thriller');

INSERT INTO movie (movie_name, movie_year, genre_id) VALUES 
('Inception', 2010, 1),      
('The Terminator', 1984, 1), 
('Tropic Thunder', 2008, 2), 
('Borat', 2006, 2),          
('Interstellar', 2014, 3),   
('Joker', 2019, 3);     


INSERT INTO Usser (name, username, password, birthday) VALUES
('Reima Riihimäki', 'reimarii', 'qwerty123', '1986-01-01'),
('Lisa Simpson', 'lizzy', 'abcdef', '1991-05-15'),
('Ben Bossy', 'boss', 'salasana', '1981-12-31'); 
