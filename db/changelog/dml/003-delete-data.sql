--liquibase formatted sql
--changeset daniel:9

DELETE FROM detalle_factura WHERE id = 999;
