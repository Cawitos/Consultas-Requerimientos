-- 1. Consulta todos los usuarios registrados
select * from usuarios;
-- 2. Consulta usuario por numero de documento
select n_documento, id from usuarios
where n_documento= 1234567890;
-- 3. Consultar cantidad de mascotas total
select count(id) as Total_Mascotas from mascota;
-- 4. Consultar mascota en especifico de un cliente
select nombre, edad from mascota
where id_Cliente=5;
-- 5. Consulta y muestra las mascotas mas jovenes
select nombre, edad from mascota 
ORDER BY edad ASC;
-- 6. Consultar mascota por un nombre especifico
select * from mascota 
where Nombre='Nala';
-- 7. Consultar citas por un usuario en especifico
select * from citas
where id_Cliente=5;
-- 8. Consultar alertas por una mascota en especifico
select * from alertas
where id_Mascota= 6;
-- 9. Consultar todos los administradores
select * from Administrador;
-- 10. Consultar todos los veterinarios
select * from veterinario;