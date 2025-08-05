CREATE TABLE User (
    user_id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    phone_num TEXT,
    email TEXT UNIQUE,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    location TEXT,
);

CREATE TABLE Event_registration_history (
    user_id INTEGER REFERENCES User(user_id),
    event_id INTEGER REFERENCES Event(event_id),
    went BOOLEAN,
    PRIMARY KEY (user_id, event_id)
);