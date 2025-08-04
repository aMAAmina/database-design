CREATE TABLE User (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    phone_num TEXT,
    email TEXT UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    location TEXT,
    user_type_id INTEGER,
    FOREIGN KEY (user_type_id) REFERENCES User_type(user_type_id)
);

CREATE TABLE User_type (
    user_type_id SERIAL PRIMARY KEY,
    user_type_name TEXT NOT NULL
);