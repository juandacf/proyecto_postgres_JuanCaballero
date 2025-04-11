-- Un procedimiento almacenado para registrar una venta.
CREATE OR REPLACE PROCEDURE registrar_venta(
    p_id_cliente INTEGER,
    p_id_producto INTEGER,
    p_cantidad INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE
    variable_stock_actual INTEGER;
    variable_fecha_venta DATE := CURRENT_DATE;
    variable_id_venta INTEGER;
BEGIN
    -- Validar que el cliente exista.
    IF NOT EXISTS (SELECT 1 FROM clientes WHERE id_cliente = p_id_cliente) THEN
        RAISE EXCEPTION 'El cliente con ID % no existe.', p_id_cliente;
    END IF;

    
    SELECT stock_actual INTO variable_stock_actual
    FROM productos
    WHERE id_producto = p_id_producto;



    -- Verificar que el stock sea suficiente antes de procesar la venta. // Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
    IF variable_stock_actual < p_cantidad THEN
        RAISE NOTICE 'Stock insuficiente para el producto con ID %. Stock actual: %, solicitado: %', 
            p_id_producto, variable_stock_actual, p_cantidad;
        RETURN;
    END IF;

    -- Si hay stock, se realiza el registro de la venta
    INSERT INTO ventas (id_cliente, fecha)
    VALUES (p_id_cliente, variable_fecha_venta)
    RETURNING id_venta INTO variable_id_venta;

    
    INSERT INTO productos_ventas (id_venta, id_producto, cantidad)
    VALUES (variable_id_venta, p_id_producto, p_cantidad);

    
    UPDATE productos
    SET stock_actual = stock_actual - p_cantidad
    WHERE id_producto = p_id_producto;

    
    RAISE NOTICE 'La venta se pudo realizar. ID de venta: %', variable_id_venta;

END;
$$;




