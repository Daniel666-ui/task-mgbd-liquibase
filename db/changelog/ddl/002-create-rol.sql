--liquibase formatted sql
--changeset Daniel:2

CREATE TABLE rol (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);