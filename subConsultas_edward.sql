-- Obtener el nombre de la mascota más joven
SELECT Nombre FROM Mascota 
WHERE edad = (SELECT MIN(edad) FROM Mascota);

-- Listar los correos electrónicos de los usuarios que son veterinarios
SELECT correoelectronico FROM Usuarios 
WHERE id IN (SELECT id_Usuario FROM Veterinario);

-- Mostrar el nombre del cliente con más mascotas registradas
SELECT Nombre FROM Cliente 
WHERE id_Usuario = (SELECT id_Cliente FROM Mascota GROUP BY id_Cliente ORDER BY COUNT(*) DESC LIMIT 1);

-- Obtener el servicio más solicitado en citas
SELECT servicio FROM Servicios 
WHERE id = (SELECT id_Servicio FROM Citas GROUP BY id_Servicio ORDER BY COUNT(*) DESC LIMIT 1);

-- Listar las razas de las mascotas atendidas por un veterinario específico (ID=1)
SELECT Raza FROM Raza 
WHERE id IN (SELECT id_Raza FROM Mascota WHERE id IN (SELECT id_Mascota FROM Citas WHERE id_Veterinario = 1));

-- Mostrar el nombre de la especie con más mascotas registradas
SELECT Especie FROM Especie 
WHERE id = (SELECT id_Especie FROM Mascota GROUP BY id_Especie ORDER BY COUNT(*) DESC LIMIT 1);

-- Consultar el cliente que tiene una mascota llamada "Firulais"
SELECT Nombre FROM Cliente 
WHERE id = (SELECT id_Cliente FROM Mascota WHERE Nombre = 'Firulais');

-- Mostrar los nombres de las mascotas que tienen citas pendientes con un veterinario específico (ID=2)
SELECT Nombre FROM Mascota 
WHERE id IN (SELECT id_Mascota FROM Citas WHERE id_Veterinario = 2);

-- Listar los nombres de los veterinarios que han atendido más de 5 citas:
SELECT Nombre FROM Veterinario 
WHERE id IN (SELECT id_Veterinario FROM Citas 
                     GROUP BY id_Veterinario HAVING COUNT(*) > 5);

-- Obtener el cliente que tiene la mayor cantidad de alertas asociadas a sus mascotas:
SELECT Nombre FROM Cliente 
WHERE id = (SELECT id_Cliente FROM Alertas 
                    GROUP BY id_Cliente ORDER BY COUNT(*) DESC LIMIT 1);