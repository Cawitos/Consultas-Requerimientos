-- Mostrar la lista de todos los usuarios

Select * from Usuarios;

-- Mostrar la lista de todas las mascotas

Select * from Mascotas;

-- Mostrar la lista de todas las citas agendadas--

Select * from Citas;

-- Mostrar la informacion del usuario numero 20

Select * from Usuarios where id = 20;

-- Mostrar la informacion de un rol en especifico
Select * from Veterinario
where id_Roles = '3';

-- Mostrar las citas que tengan un servicio en especifico

Select * from Citas where id_Servicios = 2;

-- Mostrar la lista de todas las alertas creadas --

select * from Alertas;

-- Muestra la lista de usuarios descendentemente en orden alfabetico

Select * from Usuarios order by id desc;

-- Mostrar el promedio de edades de todas las mascotas 

Select AVG(edad) from mascotas;

-- Mostrar las razas de las mascotas

Select raza from mascotas; 