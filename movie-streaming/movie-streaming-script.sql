CREATE Table User(
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    email TEXT UNIQUE,
    location TEXT,
    movie_watched_id INTEGER,
    wish_list_movie_id INTEGER,
    FOREIGN KEY (movie_watched_id) REFERENCES Movie(movie_id),
    FOREIGN KEY (wish_list_movie_id) REFERENCES Movie(movie_id)
);