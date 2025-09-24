/*
 * opciones de privilegio:
 * ALL PRIVILEGES: esto le otorgaría a un usuario de MySQL acceso completo a una base de datos designada
 * (o si no se selecciona ninguna base de datos, acceso global a todo el sistema).
 * CREATE: Permite crear nuevas tablas o bases de datos.
 * DROP: Permite eliminar tablas o bases de datos.
 * DELETE: Permite eliminar filas de las tablas.
 * INSERT: Permite insertar filas en las tablas.
 * SELECT: Les permite usar el comando SELECT para leer las bases de datos.
 * UPDATE: Permite actualizar las filas de las tablas.
 * GRANT OPTION: Permite otorgar o eliminar privilegios de otros usuarios.
 * 
 * FLUSH PRIVILEGES; importante aplicar al final de agregar usuario o modificar
 * */

-- ACTIVIDAD

-- comando de creacion - usuario evidencia:
CREATE USER 'usuario_evidencia'@'localhost' IDENTIFIED BY '123456';
-- asignado permisos
GRANT SELECT ON proyectos_usuarios.* TO 'usuario_evidencia'@'localhost';


-- Comando de Creación - usuario_prueba:
CREATE USER 'usuario_prueba'@'localhost' IDENTIFIED BY '654321';
-- Asignación de Permisos:
GRANT SELECT, INSERT, UPDATE ON proyectos_usuarios.* TO 'usuario_prueba'@'localhost';

-- revokar permisos
REVOKE INSERT, UPDATE ON proyectos_usuarios.* FROM 'usuario_prueba'@'localhost';

--  verificar los permisos que tiene un usuario
SHOW GRANTS FOR 'usuario_evidencia'@'localhost';
SHOW GRANTS FOR 'usuario_prueba'@'localhost';

-- Comprueba si el usuario existe
SELECT user FROM mysql.user WHERE user = 'usuario_evidencia'; #usuario evidencia
SELECT user FROM mysql.user WHERE user = 'usuario_prueba'; #usuario prueba

-- Si existe, bórralo
DROP USER IF EXISTS 'usuario_evidencia'@'localhost';
DROP USER IF EXISTS 'usuario_prueba'@'localhost';

--  los cambios en los permisos de los usuarios se hagan efectivos al instante
FLUSH PRIVILEGES;

