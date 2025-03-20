-- Mostrar las mascotas asignadas a un usuario en especifico--

Select * From Mascotas 
Where id_Usuarios= (select id from Usuarios where Documento = '1234567812');

-- Mostrar las citas de un usuario en especifico--

Select * From Citas 
Where id_Usuarios = (Select id From Usuarios Where Documento = '1234567812');

-- Mostrar las alertas de un usuario en especifico--

Select * from  Alertas
where id_Usuarios = (select id from Usuarios where Documento = '1234567812');

-- Mostrar la lista de los usuarios que tienen al menos una mascota ingresada--

select * from Usuarios 
where id in (select id_Usuarios from Mascotas);

-- Mostrar la lista del total de citas asignadas a un veterinario

select nombre,  
       (select COUNT(*) from Citas where citas.id_Veterinario = Veterinario.id) AS total_citas
from Veterinario;

-- Mostrar la lista de las alarmas asignadas a los usuarios --

select *, 
       (Select COUNT(*) from alertas where alertas.id_Usuarios  = Usuarios.id) AS total_alertas
FROM Usuarios;

-- Mostrar el usuario que mas mascotas tenga asignadas--

select *
from Usuarios 
where id = (select id_Usuarios from Mascotas group by id_Usuarios order by COUNT(*) desc limit 1);

-- Mostrar el nombre de las mascotas y su dueño--

select nombre, 
       (select Documento FROM Usuarios WHERE usuarios.id = mascotas.id_Usuarios) AS dueño
FROM mascotas;

-- Mostrar la primera cita de cada mascota--

select nombre, 
       (select MIN(fecha) from citas where citas.id_Mascotas = mascotas.id) AS primera_cita
from mascotas;

-- Mostrar el usuario con la mascota mas joven--

select Documento
from usuarios 
where id = (select id_Usuarios from mascotas order by edad asc limit 1);
  







