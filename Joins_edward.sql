-- Obtener el nombre del cliente, nombre de la mascota e informacion de las citas
Select Cl.nombre, M.nombre, id_Servicio as Servicio, id_Veterinario, fecha, descripcion from citas
join Cliente Cl on id_Cliente = CL.id
join Mascota M on id_Mascota = M.id; 

-- Listar las alertas con nombre del cliente y mascota involucrada
select A.*, Cl.nombre, M.nombre from alertas A
join Cliente Cl on id_Cliente = Cl.id
join Mascota M on id_Mascota = M.id;

-- Mostrar la mascota con su especie y raza
SELECT M.Nombre AS Mascota, E.Especie, R.Raza FROM Mascota M
JOIN Especie E ON M.id_Especie = E.id
JOIN Raza R ON M.id_Raza = R.id;

-- Mostrar todos los clientes con sus correos y rol asignado
SELECT U.Nombre AS Cliente, US.correoelectronico, R.rol AS RolAsignado FROM Cliente U
JOIN Usuarios US ON U.id_Usuario = US.id
JOIN Rol R ON US.id_documento = R.id;

-- Listar todas las especies y cuantas mascotas hay para cada una
SELECT E.Especie, COUNT(M.id) AS TotalMascotas FROM Especie E
LEFT JOIN Mascota M ON E.id = M.id_Especie
GROUP BY E.Especie;

-- Mostrar toda la informacion de los administradores conjunto a su correo
SELECT A.*, U.correoelectronico AS EmailAdmin FROM Administrador A
JOIN Usuarios U ON A.id_Usuario = U.id;

-- Mostrar todas las citas realizadas por un cliente con el nombre de la mascota y el veterinario
SELECT Cl.nombre as Cliente, C.Fecha, V.Nombre AS Veterinario, M.Nombre AS Mascota, S.servicio AS ServicioRealizado FROM Citas C
join Cliente Cl on C.id_Cliente = Cl.id
join Veterinario V on C.id_Veterinario = V.id
join Mascota M on C.id_Mascota = M.id
join Servicios S on C.id_Servicio = S.id
where C.id_Cliente = 1;

-- Mostrar las alertas generadas por los veterinarios y la mascota
select A.Fecha, A.descripcion, V.Nombre AS Veterinario, M.Nombre AS Mascota FROM Alertas A 
JOIN Veterinario V ON A.id_Veterinario = V.id
JOIN Mascota M ON A.id_Mascota = M.id;

-- Listar todos los clientes y la cantidad de mascotas que tiene registradas
SELECT CL.Nombre AS Cliente, COUNT(M.id) AS TotalMascotas FROM Cliente CL 
LEFT JOIN Mascota M ON CL.id = M.id_Cliente 
GROUP BY CL.Nombre;

-- Mostrar todas las citas hechas por un veterinario en especifico conjunto al cliente y la mascota
SELECT C.Fecha, CL.Nombre AS Cliente, M.Nombre AS Mascota, S.servicio AS ServicioRealizado FROM Citas C  
JOIN Cliente CL ON C.Id_cliente = CL.Id 
JOIN Mascota M ON C.Id_mascota = M.Id
JOIN Servicios S ON C.Id_servicio = S.Id  
WHERE C.Id_veterinario = 3;