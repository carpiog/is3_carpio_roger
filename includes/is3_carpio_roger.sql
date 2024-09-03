CREATE TABLE roles (
    rol_id SERIAL PRIMARY KEY,
    rol_nombre VARCHAR(50)
);

INSERT INTO roles (rol_nombre) VALUES ('normal');
INSERT INTO roles (rol_nombre) VALUES ('administrativo');
INSERT INTO roles (rol_nombre) VALUES ('administrador');


CREATE TABLE usuarios (
    usuario_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100),
    password lvarchar,
    rol_id INTEGER,
    FOREIGN KEY (rol_id) REFERENCES roles(rol_id)
);


INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Juan Pérez', 'juan.perez@example.com', 'hashedpassword1', 1);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('María López', 'maria.lopez@example.com', 'hashedpassword2', 2);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Carlos García', 'carlos.garcia@example.com', 'hashedpassword3', 3);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Ana Rodríguez', 'ana.rodriguez@example.com', 'hashedpassword4', 1);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Luis Martínez', 'luis.martinez@example.com', 'hashedpassword5', 2);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Laura Sánchez', 'laura.sanchez@example.com', 'hashedpassword6', 3);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Pedro Jiménez', 'pedro.jimenez@example.com', 'hashedpassword7', 1);
INSERT INTO usuarios (nombre, email, password, rol_id) VALUES('Carmen Hernández', 'carmen.hernandez@example.com', 'hashedpassword8', 2);

CREATE TABLE envios (
    envio_id SERIAL PRIMARY KEY,
    fecha_envio VARCHAR (20),
    usuario_id INTEGER,
    origen_lat DECIMAL(10, 8) NOT NULL,
    origen_lng DECIMAL(11, 8) NOT NULL,
    destino_lat DECIMAL(10, 8) NOT NULL,
    destino_lng DECIMAL(11, 8) NOT NULL,
    estado VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
);

INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-01', 1, 14.6349, -90.5069, 14.5553, -90.7334, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-02', 2, 14.6349, -90.5069, 14.6349, -90.5069, 'En Bodega');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-03', 3, 14.6349, -90.5069, 14.6397, -90.5133, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-04', 4, 14.6349, -90.5069, 14.6460, -90.5067, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-05', 5, 14.6349, -90.5069, 14.5833, -90.4514, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-06', 6, 14.6349, -90.5069, 14.5784, -90.6532, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-07', 7, 14.6349, -90.5069, 14.6183, -90.4999, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES('2024-09-08', 8, 14.6349, -90.5069, 14.5718, -90.5269, 'En Bodega');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-01', 1, 14.6349, -90.5069, 14.5553, -90.7334, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-01', 1, 14.6349, -90.5069, 14.5453, -90.7485, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-02', 1, 14.6349, -90.5069, 14.6349, -90.5069, 'En Bodega');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-02', 2, 14.6349, -90.5069, 14.6050, -90.5133, 'En Bodega');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-03', 3, 14.6349, -90.5069, 14.6397, -90.5133, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-03', 3, 14.6349, -90.5069, 14.6271, -90.5353, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-04', 3, 14.6349, -90.5069, 14.6460, -90.5067, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-04', 4, 14.6349, -90.5069, 14.6550, -90.4900, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-05', 4, 14.6349, -90.5069, 14.5833, -90.4514, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-05', 4, 14.6349, -90.5069, 14.5710, -90.4600, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-06', 6, 14.6349, -90.5069, 14.5784, -90.6532, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-06', 6, 14.6349, -90.5069, 14.5800, -90.6700, 'Entregado');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-07', 6, 14.6349, -90.5069, 14.6183, -90.4999, 'En Ruta');
INSERT INTO envios (fecha_envio, usuario_id, origen_lat, origen_lng, destino_lat, destino_lng, estado) 
VALUES ('2024-09-07', 7, 14.6349, -90.5069, 14.6200, -90.4850, 'En Ruta');



CREATE TABLE camiones (
    camion_id SERIAL PRIMARY KEY,
    placa VARCHAR(20),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    anio VARCHAR (20)
);

INSERT INTO camiones (placa, marca, modelo, anio) VALUES ('P123ABC', 'Toyota', 'Hilux', '2022');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P456DEF', 'Ford', 'Ranger', '2021');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P789GHI', 'Nissan', 'Frontier', '2023');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P321JKL', 'Chevrolet', 'Colorado', '2020');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P654MNO', 'Isuzu', 'D-Max', '2022');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P987PQR', 'Mitsubishi', 'L200', '2023');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P159STU', 'Volkswagen', 'Amarok', '2021');
INSERT INTO camiones (placa, marca, modelo, anio) VALUES('P753VWX', 'Mazda', 'BT-50', '2022');

CREATE TABLE envio_camion (
    envio_camion_id SERIAL PRIMARY KEY,
    envio_id INTEGER,
    camion_id INTEGER,
    fecha_salida VARCHAR (20),
    fecha_llegada VARCHAR (20),
    FOREIGN KEY (envio_id) REFERENCES envios(envio_id),
    FOREIGN KEY (camion_id) REFERENCES camiones(camion_id)
);
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES (1, 1, '2024-09-01', '2024-09-02');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(2, 2, '2024-09-02', '2024-09-03');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(3, 3, '2024-09-03', '2024-09-04');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(4, 4, '2024-09-04', '2024-09-05');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(5, 5, '2024-09-05', '2024-09-06');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(6, 6, '2024-09-06', '2024-09-07');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(7, 7, '2024-09-07', '2024-09-08');
INSERT INTO envio_camion (envio_id, camion_id, fecha_salida, fecha_llegada) VALUES(8, 8, '2024-09-08', '2024-09-09');


SELECT 
        usuarios.usuario_id, 
        usuarios.nombre, 
        usuarios.password, 
        usuarios.email, 
        roles.rol_nombre
    FROM 
        permiso
    INNER JOIN 
        usuarios ON permiso.permiso_usuario = usuarios.usuario_id
    INNER JOIN 
        roles ON permiso.permiso_rol = roles.rol_id
    WHERE 
        usuarios.email = :email;

CREATE TABLE permiso (
    permiso_id SERIAL PRIMARY KEY,
    permiso_usuario INTEGER,
    permiso_rol INTEGER,
    FOREIGN KEY (permiso_usuario) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (permiso_rol) REFERENCES roles(rol_id)
);

INSERT INTO permiso (permiso_usuario, permiso_rol) VALUES (1, 1);
INSERT INTO permiso (permiso_usuario, permiso_rol) VALUES(2, 2);
INSERT INTO permiso (permiso_usuario, permiso_rol) VALUES(3, 3);








