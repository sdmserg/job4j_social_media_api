--liquibase formatted sql

--changeset sergei:002_ddl_create_subscriptions_table.sql

CREATE TABLE subscriptions
(
    id          SERIAL PRIMARY KEY,
    user_id     INT REFERENCES users(id),
    target_id   INT REFERENCES users(id),
    status      VARCHAR(50) NOT NULL
)