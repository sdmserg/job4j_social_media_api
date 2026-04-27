--liquibase formatted sql

--changeset sergei:004_ddl_create_messages_table.sql
CREATE TABLE messages
(
    id          SERIAL PRIMARY KEY,
    from_id     INT REFERENCES users(id),
    to_id       INT REFERENCES users(id),
    content     TEXT,
    created_at  TIMESTAMP NOT NULL
)