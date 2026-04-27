--liquibase formatted sql

--changeset sergei:003_ddl_create_posts_table.sql
CREATE TABLE posts
(
    id         SERIAL PRIMARY KEY,
    user_id    INT REFERENCES users(id),
    title      VARCHAR(255) NOT NULL,
    content    TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
)