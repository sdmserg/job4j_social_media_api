--liquibase formatted sql

--changeset sergei:005_ddl_create_images_table.sql

CREATE TABLE images
(
    id             SERIAL PRIMARY KEY,
    path_to_image  VARCHAR(255) NOT NULL
)