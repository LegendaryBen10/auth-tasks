CREATE DATABASE authtodolist;

CREATE TABLE users(
    user_id UUID DEFAULT uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL UNIQUE,
    user_password VARCHAR(255) NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE todos(
    todo_id SERIAL,
    user_id UUID,
    description VARCHAR(255) NOT NULL,
    PRIMARY KEY (todo_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users(user_name, user_email, user_password) VALUES ('Jacob', 'jacob@gamil.com', 'kth18822');

INSERT INTO todos (user_id,description) VALUES ('aa63104b-be29-427e-86f9-c185fbfb9553', 'clean room');