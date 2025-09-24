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
 * FLUSH PRIVILEGES; importante aplicar de inmediato y los efetos del cambio
 * */

-- Al cambiar el host a %, le estás diciendo a MySQL que 'usuario_evidencia' o 'usuario_prueba'
-- puede conectarse desde cualquier lugar, resolviendo la incompatibilidad de direcciones IP.

-- ACTIVIDAD AGREGAR USUARIO

-- comando de creacion - usuario evidencia:
CREATE USER 'usuario_evidencia'@'%' IDENTIFIED BY '123456';
-- Asignación de permisos de SELECT en la base de datos proyectos_informaticos
GRANT SELECT ON proyectos_informaticos.* TO 'usuario_evidencia'@'%';

-- Denegación de permisos de INSERT, UPDATE y DELETE en la misma base de datos
REVOKE INSERT, UPDATE, DELETE ON proyectos_informaticos.* FROM 'usuario_evidencia'@'%';
FLUSH PRIVILEGES;

-- Comando de Creación - usuario_prueba:
CREATE USER 'usuario_prueba'@'%' IDENTIFIED BY '654321';
-- Asignación de permisos de SELECT, INSERT, UPDATE en la base de datos proyectos_informaticos
GRANT SELECT, INSERT, UPDATE ON proyectos_informaticos.* TO 'usuario_prueba'@'%';

-- Denegación de permisos de DELETE en la misma base de datos
REVOKE DELETE ON proyectos_informaticos.* FROM 'usuario_prueba'@'%';
FLUSH PRIVILEGES;

--  verificar los permisos que tiene un usuario
SHOW GRANTS FOR 'usuario_evidencia'@'%';
--  verificar los permisos que tiene un usuario
SHOW GRANTS FOR 'usuario_prueba'@'%';

-- Comprueba si el usuario existe
SELECT user FROM mysql.user WHERE user = 'usuario_evidencia'; #usuario evidencia
SELECT user FROM mysql.user WHERE user = 'usuario_prueba'; #usuario prueba

-- Si existe, bórralo
DROP USER IF EXISTS 'usuario_evidencia'@'%';
DROP USER IF EXISTS 'usuario_prueba'@'%';

--  los cambios en los permisos de los usuarios se hagan efectivos al instante
FLUSH PRIVILEGES;

