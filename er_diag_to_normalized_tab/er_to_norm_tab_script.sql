CREATE TABLE client (
    client_id SERIAL PRIMARY KEY,
    client_name TEXT NOT NULL,
    client_add TEXT
);
CREATE TABLE freelancer(
    freelancer_id SERIAL PRIMARY KEY,
    freelancer_name TEXT NOT NULL,
    freelancer_rating INTEGER,
    client_id INT REFERENCES client(client_id)
);
CREATE TABLE job_post(
    job_id SERIAL PRIMARY KEY,
    job_title TEXT NOT NULL,
    job_desc TEXT NOT NULL,
    client_id INT REFERENCES client(client_id),
    freelancer_id INT REFERENCES freelancer(freelancer_id) NULL
);
CREATE TABLE application(
    application_id SERIAL PRIMARY KEY,
    application_state TEXT CHECK(application_state IN ('applied','rejected','accepted')),
    freelancer_id INT REFERENCES freelancer(freelancer_id),
    job_id INT REFERENCES job_post(job_id)
);
CREATE TABLE Review(
    review_id SERIAL PRIMARY KEY,
    review_stars INT CHECK(review_stars CHECK (review_stars BETWEEN 1 AND 5)),
    review_desc TEXT,
    freelancer_id INT REFERENCES freelancer(freelancer_id),
    job_id INT REFERENCES job_post(job_id)
);