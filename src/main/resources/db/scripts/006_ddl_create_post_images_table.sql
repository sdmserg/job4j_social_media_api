--liquibase formatted sql

--changeset sergei:006_ddl_create_post_images_table.sql

CREATE TABLE post_images
(
    post_id        INT REFERENCES posts(id),
    image_id       INT REFERENCES images(id),

    PRIMARY KEY(post_id, image_id)
)