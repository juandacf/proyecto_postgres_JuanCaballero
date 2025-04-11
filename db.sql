
DROP DATABASE IF EXISTS techzone0425;
CREATE DATABASE techzone0425;
\c techzone0425;


CREATE TABLE IF NOT EXISTS productos (
id_producto SERIAL,
nombre_producto VARCHAR(20),
id_categoria INTEGER(11),
precio BIGINT,
stock_actual INTEGER
PRIMARY KEY(id_producto),
FOREIGN KEY id_categoria REFERENCES 
);

