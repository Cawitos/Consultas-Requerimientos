-- Listar todos los clientes con sus correos electrónicos
SELECT c.Nombre, u.correoelectronico 
FROM Cliente c 
JOIN Usuarios u ON c.id_Usuario = u.id;
-- Obtener las mascotas junto con el nombre de sus dueños
SELECT m.Nombre AS Mascota, c.Nombre AS Dueño 
FROM Mascota m 
JOIN Cliente c ON m.id_Cliente = c.id;
-- Listar todas las citas con el nombre del cliente y la mascota
SELECT cl.Nombre AS Cliente, m.Nombre AS Mascota, c.Fecha 
FROM Citas c 
JOIN Cliente cl ON c.id_Cliente = cl.id 
JOIN Mascota m ON c.id_Mascota = m.id;
-- Obtener los veterinarios y los clientes que han tenido citas juntos
SELECT v.Nombre AS Veterinario, cl.Nombre AS Cliente, c.Fecha 
FROM Citas c 
JOIN Veterinario v ON c.id_Veterinario = v.id 
JOIN Cliente cl ON c.id_Cliente = cl.id;
-- Mostrar todas las mascotas junto con su raza y especie
SELECT m.Nombre AS Mascota, r.Raza, e.Especie 
FROM Mascota m 
JOIN Raza r ON m.id_Raza = r.id 
JOIN Especie e ON m.id_Especie = e.id;
-- Listar todas las alertas junto con los nombres de los veterinarios y clientes involucrados
SELECT a.Fecha, a.descripcion, v.Nombre AS Veterinario, cl.Nombre AS Cliente 
FROM Alertas a 
JOIN Veterinario v ON a.id_Veterinario = v.id 
JOIN Cliente cl ON a.id_Cliente = cl.id;
-- Obtener los administradores junto con sus correos electrónicos
SELECT a.Nombre AS Administrador, u.correoelectronico 
FROM Administrador a 
JOIN Usuarios u ON a.id_Usuario = u.id;
-- Listar todas las citas con detalles del servicio solicitado
SELECT c.Fecha, cl.Nombre AS Cliente, s.servicio 
FROM Citas c 
JOIN Cliente cl ON c.id_Cliente = cl.id 
JOIN Servicios s ON c.id_Servicio = s.id;
-- Mostrar el nombre del veterinario que atendió cada mascota en citas
SELECT m.Nombre AS Mascota, v.Nombre AS Veterinario 
FROM Citas c 
JOIN Veterinario v ON c.id_Veterinario = v.id 
JOIN Mascota m ON c.id_Mascota = m.id;
-- Obtener la cantidad de mascotas por cada cliente
SELECT cl.Nombre AS Cliente, COUNT(m.id) AS Total_Mascotas 
FROM Cliente cl 
LEFT JOIN Mascota m ON cl.id = m.id_Cliente 
GROUP BY cl.id, cl.Nombre;
