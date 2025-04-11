--  Listar los productos con stock menor a 5 unidades.

SELECT p.id_producto, p.nombre_producto, p.stock_actual FROM  productos AS p
WHERE p.stock_actual < 5;
--  Calcular ventas totales de un mes específico.

SELECT v.id_venta, v.fecha FROM ventas AS v
WHERE v.fecha BETWEEN '2025-04-04' AND '2025-05-04'; 
--  Obtener el cliente con más compras realizadas.

SELECT COUNT(v.id_cliente), c.nombre_cliente FROM clientes AS c
INNER JOIN ventas AS v ON c.id_cliente = v.id_cliente
GROUP BY c.nombre_cliente
ORDER BY 1 DESC
LIMIT 1;
--  Listar los 5 productos más vendidos.

SELECT pv.id_producto, p.nombre_producto, COUNT(pv.id_producto_venta) AS total_ventas FROM productos_ventas AS pv
INNER JOIN productos AS p ON p.id_producto = pv.id_producto
GROUP BY pv.id_producto, p.nombre_producto
ORDER BY 3 DESC
LIMIT 5;
--  Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
SELECT v.id_venta, v.fecha FROM ventas AS v
WHERE v.fecha BETWEEN '2025-04-04' AND '2025-05-07'; 

--  Identificar clientes que no han comprado en los últimos 6 meses.

SELECT c.id_cliente, c.nombre_cliente FROM clientes AS c

