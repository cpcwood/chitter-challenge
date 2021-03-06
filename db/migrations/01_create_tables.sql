CREATE TABLE users(user_id SERIAL PRIMARY KEY, username VARCHAR(60), email VARCHAR(60), password_hash VARCHAR(60), display_name VARCHAR(60));

CREATE TABLE messages(message_id SERIAL PRIMARY KEY, text VARCHAR(160), user_id_fkey INTEGER REFERENCES users(user_id), related_id INTEGER REFERENCES messages(message_id), date_added TIMESTAMP DEFAULT NOW());

CREATE TABLE tags(tag_id SERIAL PRIMARY KEY, tag VARCHAR(160) NOT NULL UNIQUE);

CREATE TABLE tags_messages(tag_message_id SERIAL PRIMARY KEY, message_id_fkey INTEGER REFERENCES messages(message_id), tag_id_fkey INTEGER REFERENCES tags(tag_id));
