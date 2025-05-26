--búsqueda por email (login)
CREATE INDEX idx_users_email ON Users(email);

-- Para búsquedas frecuentes por rol
CREATE INDEX idx_users_rol ON Users(id_tipo_rol);

-- Para búsquedas por tipo de documento
CREATE INDEX idx_users_doc_type ON Users(id_tipo_documento);

-- Para ventas por cliente
CREATE INDEX idx_sales_cliente ON Sales(id_cliente);

-- Para método de pago
CREATE INDEX idx_sales_pago ON Sales(id_metodo_pago);

-- Para producto en detalles
CREATE INDEX idx_saledetails_producto ON saleDetails(id_producto);

-- Para venta en detalles
CREATE INDEX idx_saledetails_venta ON saleDetails(id_sale);
