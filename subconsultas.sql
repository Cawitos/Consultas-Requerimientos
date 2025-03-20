-- Obtener el nombre y correo del usuario con más mascotas registradas
SELECT correoelectronico, n_documento 
FROM Usuarios 
WHERE id = (SELECT id_Usuario FROM Cliente 
            WHERE id = (SELECT id_Cliente FROM Mascota 
                       GROUP BY id_Cliente 
                       ORDER BY COUNT(id) DESC LIMIT 1));
-- Encontrar el usuario con más citas agendadas
SELECT n_documento, correoelectronico 
FROM Usuarios 
WHERE id = (SELECT id_Usuario FROM Cliente 
            WHERE id = (SELECT id_Cliente FROM Citas 
                       GROUP BY id_Cliente 
                       ORDER BY COUNT(id_Cliente) DESC LIMIT 1));
-- Encontrar la especie más registrada en mascotas
SELECT Especie 
FROM Especie 
WHERE id = (SELECT id_Especie FROM Mascota 
            GROUP BY id_Especie 
            ORDER BY COUNT(id) DESC LIMIT 1);
-- Obtener el cliente que ha recibido más alertas
SELECT Nombre 
FROM Cliente 
WHERE id = (SELECT id_Cliente FROM Alertas 
            GROUP BY id_Cliente 
            ORDER BY COUNT(id) DESC LIMIT 1);
-- Obtener el nombre de la mascota más vieja
SELECT Nombre 
FROM Mascota 
WHERE edad = (SELECT MAX(edad) FROM Mascota);
-- Obtener el correo del cliente que ha solicitado más servicios
SELECT correoelectronico 
FROM Usuarios 
WHERE id = (SELECT id_Usuario FROM Cliente 
            WHERE id = (SELECT id_Cliente FROM Citas 
                       GROUP BY id_Cliente 
                       ORDER BY COUNT(id_Servicio) DESC LIMIT 1));
-- Obtener el veterinario con más citas agendadas
SELECT Nombre 
FROM Veterinario 
WHERE id = (SELECT id_Veterinario FROM Citas 
            GROUP BY id_Veterinario 
            ORDER BY COUNT(id) DESC LIMIT 1);
-- Obtener el nombre de la raza más registrada en mascotas
SELECT Raza 
FROM Raza 
WHERE id = (SELECT id_Raza FROM Mascota 
            GROUP BY id_Raza 
            ORDER BY COUNT(id) DESC LIMIT 1);
-- Obtener la fecha de la cita más reciente de un cliente específico
SELECT Fecha 
FROM Citas 
WHERE Fecha = (SELECT MAX(Fecha) FROM Citas WHERE id_Cliente = 5) 
AND id_Cliente = 5;
-- Obtener el número total de mascotas de un cliente específico
SELECT (SELECT COUNT(*) FROM Mascota WHERE id_Cliente = 19) AS Total_Mascotas;

