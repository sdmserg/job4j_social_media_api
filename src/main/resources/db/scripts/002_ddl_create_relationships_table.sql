--liquibase formatted sql

--changeset sergei:002_ddl_create_relationships_table.sql

CREATE TABLE relationships
(
    id          SERIAL PRIMARY KEY,
    user_id     INT REFERENCES users(id),
    target_id   INT REFERENCES users(id),
    status      VARCHAR(50) NOT NULL
)