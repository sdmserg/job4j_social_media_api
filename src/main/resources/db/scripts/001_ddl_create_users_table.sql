--liquibase formatted sql

--changeset sergei:001_ddl_create_users_table.sql
CREATE TABLE users
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(50) NOT NULL UNIQUE,
    password   VARCHAR(255) NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    create_at  TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);