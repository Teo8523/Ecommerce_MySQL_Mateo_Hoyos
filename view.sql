CREATE VIEW VistaLogin AS
SELECT 
    u.email AS username,
    r.tipo_rol AS rol,
    u.documento,
    td.tipo AS tipo_documento,
    u.nombre,
    u.apellido,
    u.email,
    ub.direccion,
    u.telefono,
    ub.ciudad
FROM Users u
JOIN Roles r ON u.id_tipo_rol = r.id
JOIN tipo_documento td ON u.id_tipo_documento = td.id
JOIN ubicacion ub ON u.id = ub.id;

SELECT * FROM VistaLogin;


CREATE OR REPLACE VIEW VistaOrdenesUsuario AS
SELECT 
    s.id AS id_venta,
    s.fecha,
    s.estado,
    CONCAT(u.nombre, ' ', u.apellido) AS cliente,
    p.nombre AS producto,
    sd.cantidad,
    sd.precio_unitario,
    (sd.cantidad * sd.precio_unitario) AS total_producto,
    mp.tipo AS metodo_pago
FROM Sales s
JOIN Users u ON s.id_cliente = u.id
JOIN saleDetails sd ON s.id = sd.id_sale
JOIN productos p ON sd.id_producto = p.id
JOIN metodo_pago mp ON s.id_metodo_pago = mp.id;

SELECT * FROM VistaOrdenesUsuario;
