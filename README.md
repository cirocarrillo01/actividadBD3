

# 📊 Sistema de Gestión de Proyectos Informáticos Actividad 3

Este repositorio contiene los scripts SQL para crear y gestionar la base de datos de un Sistema de Gestión de Proyectos Informáticos. El sistema está diseñado para rastrear proyectos, sus fases, los gastos asociados y los equipos de trabajo (docentes e informáticos).

## 🚀 Inicio Rápido
Para configurar la base de datos, simplemente clona este repositorio y ejecuta los scripts SQL en tu servidor MySQL.

### Clona el repositorio:

```Bash
git clone [https://github.com/cirocarrillo01/actividadBD3.git](https://github.com/cirocarrillo01/actividadBD3.git)
cd actividadBD3
```
### Ejecuta el script de creación:
Abre el archivo script.sql en tu cliente de base de datos (como DBeaver o la línea de comandos de MySQL) y ejecútalo. Esto creará la base de datos proyectos_informaticos y todas sus tablas.

## 📁 Estructura de la Base de Datos
La base de datos se modeló para gestionar todos los aspectos de un proyecto de software, desde el personal hasta los productos entregables.

### Tablas Principales
| Tabla | Descripción |
| :--- | :--- |
|**docente**	|Almacena la información de los docentes que actúan como jefes de proyecto.
|**informatico** |Contiene los datos del equipo técnico (desarrolladores, testers, etc.).
|**proyecto**	|Información detallada de cada proyecto (presupuesto, fechas, descripción).
|**gasto**	|Registra los gastos incurridos en cada proyecto.
|**fase**	|Divide cada proyecto en etapas (Planificada, En Progreso, etc.).
|**recurso**	|Registra los recursos (Humano, Material, Software) por fase.
|**producto**	|Almacena los entregables de cada fase.

### Tablas de Relación (Muchos a Muchos)
* **informatico_proyecto:** Vincula a los informáticos con los proyectos en los que participan.
* **informatico_fase:** Asigna informáticos a fases específicas dentro de un proyecto.

## 🔒 Gestión de Usuarios y Permisos
Para una gestión segura, el script incluye la creación de dos usuarios con roles definidos:

* **usuario_evidencia:**
    * **Permisos:** Solo lectura (SELECT) en la base de datos proyectos_informaticos.
    * **Propósito:** Ideal para reportes o consultas que no requieran modificar datos.

### Comandos de prueba:
#### SQL
```Bash
-- Funciona
SELECT * FROM docente;
-- Denegado
INSERT INTO docente (Documento, Nombre) VALUES ('...', '...');
```
* **usuario_prueba:**

    * **Permisos:** Lectura (SELECT), inserción (INSERT) y actualización (UPDATE).
    * **Propósito:** Para desarrolladores o personal que necesite manipular datos, pero no borrarlos.
    * **Comandos de prueba:**
```bash
SQL
-- Funciona
SELECT * FROM docente;
INSERT INTO docente (Documento, Nombre) VALUES ('...', '...');
```
```bash
UPDATE docente SET Nombre = '...' WHERE ...;
-- Denegado
DELETE FROM docente WHERE ...;
```
## 💾 Copias de Seguridad (Backups)
El proyecto incluye ejemplos para crear y restaurar copias de seguridad de la base de datos desde la línea de comandos (CMD).

### Crear un backup
```Bash
mysqldump -u root -p proyectos_informaticos > backup_proyectos.sql
```
### Restaurar un backup
```Bash
mysql -u root -p proyectos_informaticos < backup_proyectos.sql
```
**Nota:** Asegúrate de que no haya conexiones activas a la base de datos antes de restaurarla para evitar errores.

### 📄Estudiante
* **Nombre:** ciro antonio carrillo mendoza
* **Curso:** Base de Datos
* **Semestre:** 3
* **Año:** 2025