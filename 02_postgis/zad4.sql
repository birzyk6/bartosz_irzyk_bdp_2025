\c postgres

-- 4: Na podstawie poniższej mapy utwórz trzy tabele: 
-- buildings (id, geometry, name), roads (id, geometry, name), poi (id, geometry, name)

CREATE SCHEMA IF NOT EXISTS postgis_lab;

SET search_path TO postgis_lab, public;

CREATE TABLE postgis_lab.buildings (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY,
    name VARCHAR(100)
);

CREATE TABLE postgis_lab.roads (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY,
    name VARCHAR(100)
);

CREATE TABLE postgis_lab.poi (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY,
    name VARCHAR(100)
);

