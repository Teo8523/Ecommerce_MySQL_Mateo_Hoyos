INSERT INTO tipo_documento (id, tipo) VALUES 
(1, 'Cédula'),
(2, 'Pasaporte'),
(3, 'NIT');

INSERT INTO Roles (id, tipo_rol) VALUES 
(1, 'admin'),
(2, 'seller'),
(3, 'cliente');

INSERT INTO Users (id, nombre, apellido, email, contraseña, documento, id_tipo_documento, id_tipo_rol, telefono)
VALUES 
(1, 'Carlos', 'Gómez', 'admin@tienda.com', 'admin123', '123456789', 1, 1, '3001234567'),
(2, 'Laura', 'Martínez', 'vendedora@tienda.com', 'seller123', '987654321', 1, 2, '3017654321'),
(3, 'Mateo', 'Hoyos', 'cliente@correo.com', 'cliente123', '1122334455', 1, 3, '3023344556');

INSERT INTO ubicacion (id, ciudad, estado, pais, codigo_postal, direccion) VALUES 
(1, 'Medellín', 'Antioquia', 'Colombia', '050001', 'Calle 10 #15-30'),
(2, 'Bogotá', 'Cundinamarca', 'Colombia', '110111', 'Carrera 50 #25-10'),
(3, 'Cali', 'Valle del Cauca', 'Colombia', '760001', 'Avenida 3N #45-78');

INSERT INTO categorias (id, nombre, descripcion) VALUES 
(1, 'Tecnología', 'Productos electrónicos y gadgets'),
(2, 'Hogar', 'Artículos para el hogar');


INSERT INTO productos (id, nombre, descripcion, precio, stock, categoria_id) VALUES 
(1, 'Laptop Lenovo', 'Laptop de alto rendimiento para estudio y trabajo', 2500000.00, 10, 1),
(2, 'Aspiradora Xiaomi', 'Aspiradora inalámbrica inteligente', 600000.00, 15, 2);


INSERT INTO metodo_pago (id, tipo, detalles) VALUES 
(1, 'Tarjeta de Crédito', 'Visa Bancolombia'),
(2, 'Transferencia', 'Nequi');

INSERT INTO Sales (id, id_cliente, total, id_metodo_pago, estado)
VALUES 
(1, 3, 3100000.00, 1, 'pagado');


INSERT INTO saleDetails (id, id_sale, id_producto, cantidad, precio_unitario)
VALUES 
(1, 1, 1, 1, 2500000.00),
(2, 1, 2, 1, 600000.00);
