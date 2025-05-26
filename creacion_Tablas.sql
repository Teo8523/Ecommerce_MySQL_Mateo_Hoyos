create database Ecommerce;

use Ecommerce;

create table tipo_documento(
	id INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL
);

CREATE TABLE Roles(
	id INT PRIMARY KEY,
    tipo_rol VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Users(
	id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100),
    email VARCHAR(100) NOT NULL UNIQUE,
    contraseña VARCHAR(255)NOT NULL,
    documento VARCHAR(50),
    id_tipo_documento INT, 
    id_tipo_rol INT,
    telefono VARCHAR(50),
    fecha_registro timestamp default NOW(),
	FOREIGN KEY (id_tipo_documento) REFERENCES tipo_documento(id),
    FOREIGN KEY (id_tipo_rol) REFERENCES Roles(id) 
);

CREATE TABLE  ubicacion(
	id INT PRIMARY KEY,
    ciudad VARCHAR(100),
    estado VARCHAR(100),
    pais VARCHAR(100),
    codigo_postal VARCHAR(20),
    direccion VARCHAR(200),
	FOREIGN KEY (id) REFERENCES Users(id)
);

CREATE TABLE categorias(
	id INT PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL UNIQUE,
    descripcion VARCHAR(200)
);

CREATE TABLE productos(
	id INT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    descripcion VARCHAR(200),
    precio DECIMAL(15,2) NOT NULL,
    stock INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE metodo_pago(
 id INT PRIMARY KEY,
 tipo VARCHAR(50) NOT NULL,
 detalles VARCHAR(100)
);

CREATE TABLE Sales(
	id INT PRIMARY KEY,
    id_cliente INT,
    fecha timestamp default now(),
    total DECIMAL(15,2) NOT NULL,
    id_metodo_pago INT,
    estado VARCHAR(50) DEFAULT 'pendiente',
    FOREIGN KEY (id_cliente) REFERENCES Users(id),
    FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago(id)
);

CREATE TABLE  saleDetails(
 id INT PRIMARY KEY,
 id_sale INT,
 id_producto INT,
 cantidad INT NOT NULL,
 precio_unitario DECIMAL(15,2)NOT NULL,
 FOREIGN KEY (id_sale) REFERENCES Sales(id),
FOREIGN KEY (id_producto) REFERENCES productos(id)
);



