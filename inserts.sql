
INSERT INTO categorias (nombre_categoria) VALUES
('Smartphones'),
('Laptops'),
('Tablets'),
('Accesorios'),
('Televisores'),
('Auriculares'),
('Cámaras'),
('Consolas'),
('Monitores'),
('Teclados'),
('Ratones'),
('Impresoras'),
('Almacenamiento'),
('Baterías'),
('Cables');


INSERT INTO clientes (nombre_cliente, apellido_cliente, correo_cliente, telefono_cliente) VALUES
('Juan', 'Pérez', 'juan.perez@gmail.com', '1234567890'),
('María', 'Gómez', 'maria.gomez@hotmail.com', '1234567891'),
('Carlos', 'López', 'carlos.lopez@yahoo.com', '1234567892'),
('Ana', 'Martínez', 'ana.martinez@gmail.com', '1234567893'),
('Luis', 'Rodríguez', 'luis.rodriguez@outlook.com', '1234567894'),
('Sofía', 'Hernández', 'sofia.hernandez@gmail.com', '1234567895'),
('Diego', 'García', 'diego.garcia@hotmail.com', '1234567896'),
('Laura', 'Sánchez', 'laura.sanchez@yahoo.com', '1234567897'),
('Pedro', 'Ramírez', 'pedro.ramirez@gmail.com', '1234567898'),
('Elena', 'Torres', 'elena.torres@outlook.com', '1234567899'),
('Miguel', 'Flores', 'miguel.flores@gmail.com', '1234567800'),
('Carmen', 'Vega', 'carmen.vega@hotmail.com', '1234567801'),
('Jorge', 'Ríos', 'jorge.rios@yahoo.com', '1234567802'),
('Lucía', 'Mendoza', 'lucia.mendoza@gmail.com', '1234567803'),
('Pablo', 'Castillo', 'pablo.castillo@outlook.com', '1234567804');

-- Insertar datos en la tabla proveedores (15 registros)
INSERT INTO proveedores (nombre_proveedor, telefono_proveedor, correo_proveedor) VALUES
('TechWorld', '9876543210', 'contact@techworld.com'),
('ElectroDist', '9876543211', 'sales@electrodist.com'),
('GadgetZone', '9876543212', 'info@gadgetzone.com'),
('Innovatech', '9876543213', 'support@innovatech.com'),
('SmartSupply', '9876543214', 'supply@smartsupply.com'),
('TechTrend', '9876543215', 'sales@techtrend.com'),
('ElectroMart', '9876543216', 'contact@electromart.com'),
('DigitalHub', '9876543217', 'info@digitalhub.com'),
('GizmoCorp', '9876543218', 'support@gizmocorp.com'),
('TechTrove', '9876543219', 'sales@techtrove.com'),
('CircuitCity', '9876543220', 'contact@circuitcity.com'),
('NexGen', '9876543221', 'info@nexgen.com'),
('TechTitan', '9876543222', 'supply@techtitan.com'),
('ElectroWave', '9876543223', 'sales@electrowave.com'),
('GadgetGalaxy', '9876543224', 'info@gadgetgalaxy.com');

-- Insertar datos en la tabla productos (15 registros)
INSERT INTO productos (nombre_producto, id_categoria, precio, stock_actual) VALUES
('iPhone 13', 1, 799000, 50),
('MacBook Pro', 2, 1299000, 30),
('iPad Air', 3, 599000, 40),
('Cargador USB-C', 4, 29000, 100),
('Smart TV 55"', 5, 699000, 20),
('AirPods Pro', 6, 249000, 60),
('Cámara Canon', 7, 499000, 15),
('PS5', 8, 499000, 25),
('Monitor 27"', 9, 299000, 35),
('Teclado Mecánico', 10, 99000, 80),
('Ratón Inalámbrico', 11, 49000, 90),
('Impresora HP', 12, 149000, 10),
('SSD 1TB', 13, 129000, 45),
('Batería Externa', 14, 39000, 70),
('Cable HDMI', 15, 19000, 120);

-- Insertar datos en la tabla ventas (15 registros)
INSERT INTO ventas (id_cliente, fecha) VALUES
(1, '2025-01-10'),
(2, '2025-01-15'),
(3, '2025-02-01'),
(4, '2025-02-10'),
(5, '2025-03-01'),
(6, '2025-03-15'),
(7, '2025-03-20'),
(8, '2025-04-01'),
(9, '2025-04-02'),
(10, '2025-04-03'),
(11, '2025-04-04'),
(12, '2025-04-05'),
(13, '2025-04-06'),
(14, '2025-04-07'),
(15, '2025-04-08');

-- Insertar datos en la tabla productos_proveedores (15 registros)
INSERT INTO productos_proveedores (id_producto, id_proveedor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);


INSERT INTO productos_ventas (id_venta, id_producto, cantidad) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 3),
(5, 5, 1),
(6, 6, 2),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 2),
(11, 11, 3),
(12, 12, 1),
(13, 13, 2),
(14, 14, 4),
(15, 15, 5);