#evaluacion de permisos de usuarios#

-- permisos permitidos usuario_evidencia
#SELECT
USE proyectos_informaticos;
SELECT * FROM docente;
-- sin permisos
#INSERT
USE proyectos_informaticos;
INSERT INTO docente (Documento, Nombre, Direccion, Titulo, AnosExperiencia) VALUES
('123456999', 'Maria Jose', 'Calle Falsa 723', 'PhD en Ingenieria de Software', 20);
#UPDATE
USE proyectos_informaticos;
UPDATE docente SET Nombre = 'jhohana perez' WHERE codigo_docente = 5;
#DELETE
USE proyectos_informaticos;
DELETE FROM docente WHERE Codigo_docente = 1;

-- permisos permitidos usuario_prueba
#SELECT
USE proyectos_informaticos;
SELECT * FROM docente;
#INSERT
USE proyectos_informaticos;
INSERT INTO docente (Documento, Nombre, Direccion, Titulo, AnosExperiencia) VALUES
('123456999', 'Maria Jose', 'Calle Falsa 723', 'PhD en Ingenieria de Software', 20);
#UPDATE
USE proyectos_informaticos;
UPDATE docente SET Nombre = 'jhohana perez' WHERE codigo_docente = 5;
-- sin permisos
#DELETE
USE proyectos_informaticos;
DELETE FROM docente WHERE Codigo_docente = 1;
