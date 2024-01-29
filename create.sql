CREATE TABLE Artists (
    artist_id INT PRIMARY KEY,
    artist_name VARCHAR(100)
);

CREATE TABLE Genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(100)
);

CREATE TABLE Artists_and_Genres (
    artist_id INT,
    genre_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_name VARCHAR(100),
    year_ INT
);

CREATE TABLE Artists_and_Albums (
    artist_id INT,
    album_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Track ( 
    track_id INT PRIMARY KEY,
    track_name VARCHAR(100),
    album_id INT,
    duration INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE Collection (
    collection_id INT PRIMARY KEY,
    collection_name VARCHAR(100),
    year_ INT
);

CREATE TABLE Collection_and_Track (
    collection_id INT,
    track_id INT,
    FOREIGN KEY (collection_id) REFERENCES Collection(collection_id),
    FOREIGN KEY (track_id) REFERENCES Track(track_id)
);