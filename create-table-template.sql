-- Active: 1731342748579@@127.0.0.1@5432@postgres@public
CREATE TABLE genre(  
    name VARCHAR(255) NOT NULL PRIMARY KEY,
    descr VARCHAR(255)
);

CREATE TABLE publisher(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    address VARCHAR(255)
);

CREATE TABLE author(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    address VARCHAR(255)
);


CREATE TABLE book(  
    id int NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255),
    year INT,
    genre VARCHAR(255),
    publisher_id INT,
    author_id INT,
    FOREIGN KEY (genre) REFERENCES genre(name),
    FOREIGN KEY (publisher_id) REFERENCES publisher(id),
    FOREIGN KEY (author_id) REFERENCES author(id)
);