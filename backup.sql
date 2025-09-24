-- creacion de una backup
/*
 * mysqldump -u [usuario] -p [nombre_de_la_db] > [nombre_del_archivo.sql]
 * 
 * mysqldump: El comando principal para generar el backup.
 * -u: Especifica el nombre de usuario de MySQL.
 * -p: Indica que se debe solicitar la contraseña. Es más seguro que escribir la contraseña directamente en el comando.
 * [nombre_de_la_db]: El nombre de la base de datos de la que deseas hacer el backup.
 * >: Un operador de redirección que envía la salida del comando mysqldump a un archivo en lugar de a la pantalla.
 * [nombre_del_archivo.sql]: La ruta y el nombre del archivo donde se guardará el backup.
*/


-- creacion de back up de base de datos con CMD
mysqldump -u root -p proyectos_usuarios > backup_proyectos.sql
mysqldump -u root -p proyectos_usuarios > "C:\Users\yagam\OneDrive\Escritorio\IUDigital\tercer semestre - 01\bases de datos\base de datos\backup_proyectos.sql"

/* acidente controlado */
-- eliminar contenido de la tabla docente, mas no su estructura
USE proyectos_usuarios;
DELETE FROM docente; -- ¡Cuidado con este comando!

-- restauracion de datos con en backup con CMD
mysql -u root -p proyectos_usuarios < backup_proyectos.sql
mysql -u root -p proyectos_usuarios < "C:\Users\yagam\OneDrive\Escritorio\IUDigital\tercer semestre - 01\bases de datos\base de datos\backup_proyectos.sql"