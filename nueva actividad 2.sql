
USE proyectos_usuarios;
INSERT INTO docente (Documento, Nombre, Direccion, Titulo, AnosExperiencia) VALUES
('123456789', 'Maria Lopez', 'Calle Falsa 123', 'PhD en Ingenieria de Software', 15),
('987654321', 'Juan Perez', 'Avenida Siempreviva 742', 'Maestro en Gerencia de Proyectos', 10),
('112233445', 'Ana Gomez', 'Carrera 5 #10-20', 'Licenciada en Informatica', 8),
('556677889', 'Carlos Rodriguez', 'Calle 70 #5-15', 'Ingeniero de Sistemas', 20),
('998877665', 'Laura Fernandez', 'Diagonal 45 #8-30', 'Especialista en Bases de Datos', 12),
('223344556', 'David Martinez', 'Avenida 20 #12-50', 'PhD en Ciencias de la Computacion', 18),
('334455667', 'Sofía Ramirez', 'Transversal 15 #30-45', 'Ingeniera de Telecomunicaciones', 9),
('445566778', 'Pablo Sanchez', 'Calle 80 #25-10', 'Magister en Ciberseguridad', 11),
('667788990', 'Valeria Torres', 'Avenida 1 #2-3', 'Ingeniera Industrial', 7),
('778899001', 'Felipe Castro', 'Carrera 10 #20-30', 'Licenciado en Administracion', 5);

INSERT INTO informatico (Nombre, Tipo, Coste, Lenguajes) VALUES
('Pedro Gomez', 'Backend', 50000.00, 'Python, Java'),
('Luisa Hernandez', 'Frontend', 45000.00, 'JavaScript, React'),
('Andres Vargas', 'Fullstack', 60000.00, 'Node.js, SQL, Vue.js'),
('Gabriela Diaz', 'DevOps', 55000.00, 'Docker, Kubernetes, AWS'),
('Ricardo Medina', 'Tester', 40000.00, 'Selenium, Jira'),
('Camila Ortiz', 'Backend', 52000.00, 'C#, .NET'),
('Miguel Romero', 'Frontend', 48000.00, 'Angular, TypeScript'),
('Daniela Morales', 'Fullstack', 62000.00, 'PHP, Laravel'),
('Esteban Ruiz', 'DevOps', 58000.00, 'Azure, Jenkins'),
('Paula Jimenez', 'Tester', 42000.00, 'Cypress, Jest');

INSERT INTO proyecto (Nombre, Aliado, Descripcion, Presupuesto, HorasEstimadas, FechaInicio, FechaFin, DocenteJefe) VALUES
('Sistema de Gestion Academica', 'Universidad XYZ', 'Desarrollo de un sistema para la gestion de notas y cursos.', 250000.00, 1500, '2025-01-10', '2025-12-20', 1),
('App Movil de Salud', 'Clínica ABC', 'Aplicación para el monitoreo de signos vitales en pacientes.', 180000.00, 1200, '2025-03-05', '2025-11-30', 2),
('Plataforma de E-commerce', 'Tienda Virtual S.A.', 'Creación de una plataforma de comercio electronico para una PYME.', 300000.00, 2000, '2025-02-01', '2025-10-15', 3),
('Software de Finanzas Personales', 'Banca Online', 'Herramienta para el seguimiento de gastos y presupuestos personales.', 100000.00, 800, '2025-04-20', '2025-09-30', 4),
('Sistema de Reservas Hoteleras', 'Hoteles Del Sol', 'Software para la gestion de reservas y check-in en hoteles.', 220000.00, 1600, '2025-05-15', '2026-01-31', 5),
('Portal de Noticias Interactivo', 'El Informador', 'Rediseño y desarrollo de un portal de noticias con funciones interactivas.', 150000.00, 1100, '2025-06-01', '2025-12-15', 6),
('Herramienta de Analisis de Datos', 'Empresa BigData', 'Software para el analisis y visualizacion de grandes conjuntos de datos.', 400000.00, 2500, '2025-07-10', '2026-03-20', 7),
('Aplicacion de Gestion de Proyectos', 'Agencia Consultora', 'Aplicacion web para la gestion interna de proyectos y tareas.', 190000.00, 1300, '2025-08-01', '2026-02-28', 8),
('Juego Educativo para Ninos', 'Editorial Educativa', 'Juego movil para ensenar matematicas de forma ludica.', 90000.00, 750, '2025-09-05', '2026-04-10', 9),
('Sistema de Logistica', 'Transportes Rapidos', 'Software para optimizar las rutas de entrega y la gestion de inventario.', 280000.00, 1800, '2025-10-20', '2026-05-31', 10);

INSERT INTO gasto (Descripcion, Fecha, Importe, TipoGasto, ProyectoCodigo) VALUES
('Compra de servidores', '2025-01-15', 5000.00, 'Hardware', 1),
('Licencias de software', '2025-03-10', 2500.00, 'Software', 2),
('Publicidad en redes sociales', '2025-02-20', 1500.00, 'Marketing', 3),
('Pago de servicios de hosting', '2025-04-25', 800.00, 'Servicios', 4),
('Mantenimiento de bases de datos', '2025-06-01', 3000.00, 'Servicios', 5),
('Gastos de viaje equipo', '2025-07-05', 1200.00, 'Viaticos', 6),
('Adquisicion de equipo de desarrollo', '2025-08-10', 4500.00, 'Hardware', 7),
('Gastos de consultoria', '2025-09-15', 2000.00, 'Servicios', 8),
('Licencias de ilustracion', '2025-10-25', 700.00, 'Software', 9),
('Servicios de transporte de mercancia', '2025-11-10', 3500.00, 'Logistica', 10);

INSERT INTO fase (Nombre, FechaComienzo, FechaFin, Estado, ProyectoCodigo) VALUES
('Planificacion', '2025-01-10', '2025-02-15', 'Completada', 1),
('Diseno', '2025-02-16', '2025-04-30', 'Completada', 1),
('Desarrollo', '2025-05-01', '2025-09-30', 'En Progreso', 1),
('Pruebas', '2025-10-01', '2025-11-15', 'Planificada', 1),
('Implementacion', '2025-11-16', '2025-12-20', 'Planificada', 1),
('Analisis de Requisitos', '2025-03-05', '2025-03-31', 'Completada', 2),
('Desarrollo Backend', '2025-04-01', '2025-08-31', 'En Progreso', 2),
('Desarrollo Frontend', '2025-05-15', '2025-10-31', 'En Progreso', 2),
('Despliegue', '2025-11-01', '2025-11-30', 'Planificada', 2),
('Marketing', '2025-03-15', '2025-05-30', 'Completada', 3);

INSERT INTO recurso (Nombre, Descripcion, Tipo, PeriodoUtilizado, FaseNumero) VALUES
('Equipo de Diseno', 'Personal de diseno UX/UI', 'Humano', 'Enero - Abril', 1),
('Servidor de Desarrollo', 'Servidor para pruebas internas', 'Hardware', 'Febrero - Diciembre', 2),
('Licencia de IDE', 'Licencia de entorno de desarrollo integrado', 'Software', 'Marzo - Noviembre', 3),
('Tester QA', 'Personal para pruebas de calidad', 'Humano', 'Octubre - Noviembre', 4),
('Servicios en la nube', 'Hosting y bases de datos en la nube', 'Software', 'Noviembre - Diciembre', 5),
('Arquitecto de Soluciones', 'Experto en arquitectura de software', 'Humano', 'Marzo', 6),
('Base de datos NoSQL', 'Base de datos para almacenar datos de salud', 'Software', 'Abril - Agosto', 7),
('Biblioteca de Componentes UI', 'Libreria de componentes para la interfaz', 'Software', 'Mayo - Octubre', 8),
('Servidor de produccion', 'Servidor para la aplicacion final', 'Hardware', 'Noviembre', 9),
('Consultor de Marketing Digital', 'Experto en estrategias de marketing', 'Humano', 'Marzo - Mayo', 10);

INSERT INTO producto (Nombre, Descripcion, Finalizado, FaseNumero, Responsable) VALUES
('Plan de Proyecto Detallado', 'Documento con cronograma y costos', 1, 1, 3),
('Maqueta de UI/UX', 'Diseno de la interfaz de usuario', 1, 2, 2),
('Modulo de Autenticacion', 'Codigo del sistema de inicio de sesion', 0, 3, 1),
('Reporte de Pruebas de Carga', 'Documento con los resultados de las pruebas', 0, 4, 5),
('Guia de Despliegue', 'Documentacion para la instalacion del sistema', 0, 5, 4),
('Documento de Requisitos', 'Especificaciones detalladas del software', 1, 6, 3),
('API del Servidor', 'Servicios de la API para la aplicacion', 0, 7, 6),
('Aplicacion Frontend', 'Codigo de la interfaz de la aplicacion movil', 0, 8, 7),
('Reporte de Seguridad', 'Analisis de vulnerabilidades de la aplicacion', 0, 9, 10),
('Estrategia de Marketing', 'Plan para la promocion del e-commerce', 1, 10, 8);

