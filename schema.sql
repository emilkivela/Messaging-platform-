CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    content TEXT,
    chat_id INTEGER REFERENCES chats
    user_id INTEGER REFERENCES users,
    sent_at TIMESTAMP
);

CREATE TABLE chats (
    id SERIAL PRIMARY KEY,
    name TEXT,
    created TIMESTAMP,
    creator_id INTEGER REFERENCES users
);

