--liquibase formatted sql
--changeset daniel:8

UPDATE producto SET precio = 3500 WHERE id = 1
