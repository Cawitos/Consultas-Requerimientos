-- Obtener todas las mascotas con el documento de sus dueños  --

Select usuarios.Documento AS dueño, mascotas.nombre AS mascota
From usuarios Join mascotas on usuarios.id = mascotas.id_usuarios;

-- Mostrar los usuarios que no tengan mascotas agregadas--

Select Usuarios.*
from usuarios join mascotas on usuarios.id = mascotas.id_Usuarios
where mascotas.id_Usuarios is null;

-- Mostrar las mascotas y sus alertas agregadas--

Select mascotas.nombre AS mascota, alertas.Fecha, alertas.descripcion
From mascotas Join alertas on mascotas.id = alertas.id_Mascotas;

-- Mostrar las mascotas que no tengan alertas asignadas--

select mascotas.nombre AS mascota 
from mascotas join alertas on  mascotas.id = alertas.id_Mascotas
where alertas.id_Mascotas is null;

-- Obtener las mascotas que tengan mas de una cita--

Select mascotas.nombre, COUNT(citas.id) AS total_citas
From mascotas JOIN citas ON mascotas.id = citas.id_Mascotas
GROUP BY mascotas.nombre
HAVING COUNT(citas.id) > 1;

-- Obtener los usuarios junto con la cantidad de mascotas que tienen--

select usuarios.Documento, COUNT(mascotas.id) AS cantidad_mascotas
from usuarios JOIN mascotas ON usuarios.id = mascotas.id_Usuarios
GROUP BY usuarios.Documento;

-- Obtener los veterinarios y la cantidad de citas atendidas--

select veterinario.nombre, COUNT(citas.id) AS total_citas
From veterinario JOIN citas ON veterinario.id= citas.id_Veterinario
GROUP BY veterinario.nombre;

-- Obtener los servicios que no han siddo utilizados en ninguna cita--

Select servicios.servicio
from servicios JOIN citas ON servicios.id = citas.id_Servicios
Where citas.id_Servicios is null;

-- Obtener las mascotas y el numero de alertas que tienen agregadas--

Select mascotas.nombre, COUNT(alertas.id) AS cantidad_alertas
from mascotas JOIN alertas ON mascotas.id = alertas.id_Mascotas
GROUP BY mascotas.nombre;

-- Obtener el dia que mas citas se han registrados--

SELECT usuarios.Documento, AVG(mascotas.edad) AS promedio_edad_mascotas
FROM usuarios JOIN mascotas ON usuarios.id = mascotas.id_Usuarios
GROUP BY usuarios.Documento;















