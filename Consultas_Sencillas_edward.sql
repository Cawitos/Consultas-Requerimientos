use animalbeats;

-- Obtener todos los correos y numero de documento de los usuarios registrados
SELECT CorreoElectronico, n_documento FROM Usuarios;

-- Listar todas las mascotas
select nombre from Mascota;

-- Mostrar el nombre de todos los veterinarios
select nombre from veterinario;

-- Mostrar todas las citas programadas
select * from citas;

-- Mostrar todas las alertas asignadas
select * from alertas;

-- Mostrar todas las especies
select * from especie;

-- Mostrar los servicios disponibles
select * from servicios;

-- Mostrar el nombre de los clientes
select nombre from cliente;

-- Mostrar las edades de las mascotas
select nombre, edad from mascota;

-- Mostrar todos los administradores
select * from administrador;