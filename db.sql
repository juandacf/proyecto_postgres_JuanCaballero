
DROP DATABASE IF EXISTS techzone0425;
CREATE DATABASE techzone0425;


CREATE TABLE IF NOT EXISTS categorias(
    id_categoria SERIAL,
    nombre_categoria VARCHAR(30),
    PRIMARY KEY(id_categoria)
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente SERIAL,
    nombre_cliente VARCHAR(20),
    apellido_cliente VARCHAR(20),
    correo_cliente VARCHAR (150),
    telefono_cliente VARCHAR(12),
    PRIMARY KEY(id_cliente)
);

CREATE TABLE IF NOT EXISTS proveedores(
    id_proveedor SERIAL,
    nombre_proveedor VARCHAR(150),
    telefono_proveedor VARCHAR(12),
    correo_proveedor VARCHAR(150),
    PRIMARY KEY(id_proveedor)
);

CREATE TABLE IF NOT EXISTS ventas(
    id_venta SERIAL,
    id_cliente INTEGER,
    fecha DATE,
    PRIMARY KEY(id_venta),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS productos (
id_producto SERIAL,
nombre_producto VARCHAR(20),
id_categoria INTEGER,
precio BIGINT,
stock_actual INTEGER,
PRIMARY KEY(id_producto),
FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE IF NOT EXISTS productos_proveedores (
    id_producto_proveedor SERIAL,
    id_producto INTEGER,
    id_proveedor INTEGER,
    PRIMARY KEY(id_producto_proveedor),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);

CREATE TABLE IF NOT EXISTS productos_ventas (
    id_producto_venta SERIAL,
    id_venta  INTEGER,
    id_producto INTEGER,
    cantidad INTEGER,
    PRIMARY KEY(id_producto_venta),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
