USE proyectos_informaticos;

-- Inserción de datos en la tabla `docente`

INSERT INTO docente (Documento, Nombre, Direccion, Titulo, AnosExperiencia) VALUES
('1101234567', 'Roberto Silva', 'Calle 100 #20-50', 'Ingeniero de Sistemas', 12),
('1020304050', 'Catalina Diaz', 'Avenida Principal 456', 'Maestra en Inteligencia Artificial', 8),
('1098765432', 'Fernando Gaviria', 'Carrera 7 #1-15', 'PhD en Redes de Computadores', 25),
('1030507090', 'Juliana Rios', 'Transversal 8 #35-40', 'Ingeniera de Software', 14),
('1088776655', 'Alejandro Cruz', 'Calle 50 #15-30', 'Licenciado en Ciencias de la Computación', 19),
('1055443322', 'Daniela Vega', 'Avenida 25 #8-10', 'Especialista en Big Data', 7),
('1066778899', 'Mario Ortiz', 'Diagonal 60 #5-25', 'Magister en Seguridad Informática', 16),
('1044556677', 'Valentina Perez', 'Carrera 15 #50-10', 'Ingeniera Electrónica', 10),
('1011223344', 'Santiago Morales', 'Calle 2 #3-4', 'PhD en Robótica', 22),
('1077889900', 'Paola Herrera', 'Avenida 30 #50-60', 'Licenciada en Gerencia de Proyectos', 6);

-- Inserción de datos en la tabla `informatico`

INSERT INTO informatico (Nombre, Tipo, Coste, Lenguajes) VALUES
('Felipe Reyes', 'Backend', 55000.00, 'Ruby, Go'),
('Andrea López', 'Frontend', 47000.00, 'HTML, CSS, Svelte'),
('Javier Moreno', 'Fullstack', 65000.00, 'Python, Django, PostgreSQL'),
('Isabel Franco', 'DevOps', 60000.00, 'Terraform, Ansible, GCP'),
('Manuel Castro', 'Tester', 43000.00, 'Postman, Cucumber'),
('Ana Vargas', 'Backend', 58000.00, 'Rust, Scala'),
('Laura Gómez', 'Frontend', 50000.00, 'Ember, Vue.js'),
('Diego Jiménez', 'Fullstack', 68000.00, 'Java, Spring, MongoDB'),
('Sofía Ramos', 'DevOps', 63000.00, 'Kubernetes, OpenShift'),
('Carlos Fuentes', 'Tester', 45000.00, 'Robot Framework, Playwright');

-- Inserción de datos en la tabla `proyecto`

INSERT INTO proyecto (Nombre, Aliado, Descripcion, Presupuesto, HorasEstimadas, FechaInicio, FechaFin, DocenteJefe) VALUES
('Plataforma de E-learning', 'Instituto de Educacion S.A.', 'Desarrollo de una plataforma para cursos en línea.', 320000.00, 2100, '2025-01-20', '2025-12-15', 1),
('Software de Gestión de Hoteles', 'Cadena Hotelera Estelar', 'Sistema para administración de reservas y servicios hoteleros.', 200000.00, 1400, '2025-03-10', '2025-11-25', 2),
('App de Realidad Aumentada', 'Museo Nacional', 'Aplicación para guiar visitas interactivas en el museo.', 150000.00, 1000, '2025-04-01', '2025-09-30', 3),
('Sistema de Monitoreo Urbano', 'Alcaldía de la Ciudad', 'Herramienta para el seguimiento de tráfico y seguridad.', 450000.00, 2800, '2025-02-15', '2026-01-31', 4),
('Plataforma de Crowdfunding', 'Start-up Finanzas Creativas', 'Plataforma para financiar proyectos mediante donaciones.', 130000.00, 950, '2025-05-01', '2025-10-20', 5),
('Aplicación de Entrega de Comida', 'Restaurante El Sabor', 'App para pedidos y entrega a domicilio.', 180000.00, 1500, '2025-06-10', '2025-12-30', 6),
('Herramienta de Ciberseguridad', 'Banco Central', 'Software para detección de amenazas y vulnerabilidades.', 500000.00, 3000, '2025-07-20', '2026-05-15', 7),
('Sistema de Gestión de Almacenes', 'Bodegas Logisticas', 'Aplicación para optimizar el inventario y logística.', 270000.00, 1900, '2025-08-05', '2026-03-31', 8),
('Videojuego para PC', 'Estudio de Videojuegos', 'Juego de estrategia en tiempo real.', 350000.00, 2400, '2025-09-01', '2026-06-30', 9),
('App de Fitness Personalizada', 'Gimnasio FitLife', 'Aplicación para rutinas de ejercicio y seguimiento de progreso.', 110000.00, 850, '2025-10-15', '2026-04-25', 10);

-- Inserción de datos en la tabla `gasto`

INSERT INTO gasto (Descripcion, Fecha, Importe, TipoGasto, ProyectoCodigo) VALUES
('Compra de laptops para desarrolladores', '2025-01-25', 8000.00, 'Hardware', 1),
('Suscripción a servicio de nube', '2025-03-15', 3000.00, 'Software', 2),
('Campaña de lanzamiento en redes', '2025-04-10', 2000.00, 'Marketing', 3),
('Pago de servidores de base de datos', '2025-02-20', 950.00, 'Servicios', 4),
('Consultoría de arquitectura de software', '2025-05-05', 4000.00, 'Servicios', 5),
('Viáticos para reunión con cliente', '2025-06-20', 1500.00, 'Viáticos', 6),
('Compra de licencias de seguridad', '2025-07-25', 6000.00, 'Software', 7),
('Gastos de transporte de inventario', '2025-08-10', 2500.00, 'Logística', 8),
('Inversión en motor gráfico', '2025-09-05', 10000.00, 'Software', 9),
('Publicidad en revistas especializadas', '2025-10-20', 1800.00, 'Marketing', 10);

-- Inserción de datos en la tabla `fase`

INSERT INTO fase (Nombre, FechaComienzo, FechaFin, Estado, ProyectoCodigo) VALUES
('Investigación de Mercado', '2025-01-20', '2025-02-28', 'Completada', 1),
('Diseño de Módulos', '2025-03-01', '2025-05-30', 'Completada', 1),
('Codificación', '2025-06-01', '2025-10-31', 'En Progreso', 1),
('Control de Calidad', '2025-11-01', '2025-12-05', 'Planificada', 1),
('Lanzamiento', '2025-12-06', '2025-12-15', 'Planificada', 1),
('Análisis de Necesidades', '2025-03-10', '2025-04-15', 'Completada', 2),
('Desarrollo del Backend', '2025-04-16', '2025-08-30', 'En Progreso', 2),
('Diseño de Experiencia de Usuario', '2025-04-01', '2025-05-31', 'Completada', 3),
('Programación de la Realidad Aumentada', '2025-06-01', '2025-08-31', 'En Progreso', 3),
('Revisión y Ajustes', '2025-09-01', '2025-09-30', 'Planificada', 3);

-- Inserción de datos en la tabla `recurso`

INSERT INTO recurso (Nombre, Descripcion, Tipo, PeriodoUtilizado, FaseNumero) VALUES
('Servidor de E-learning', 'Servidor dedicado para la plataforma', 'Hardware', 'Enero - Diciembre', 1),
('Licencia de CMS', 'Licencia de sistema de gestión de contenidos', 'Software', 'Marzo - Noviembre', 2),
('Equipo de QA', 'Personal para control de calidad', 'Humano', 'Noviembre', 4),
('Hosting para la aplicación', 'Servicio de alojamiento web', 'Software', 'Diciembre', 5),
('Consultor de UX', 'Experto en experiencia de usuario', 'Humano', 'Abril', 6),
('Base de Datos Relacional', 'Motor de base de datos para reservas', 'Software', 'Abril - Noviembre', 7),
('Diseñador 3D', 'Artista para modelado de objetos', 'Humano', 'Junio - Agosto', 9),
('Biblioteca de Realidad Aumentada', 'Librería de software para el desarrollo', 'Software', 'Junio - Septiembre', 9),
('Arquitecto de Sistemas', 'Experto en diseño de arquitectura', 'Humano', 'Enero', 1),
('Analista de Datos', 'Especialista en análisis de información', 'Humano', 'Febrero', 1);

-- Inserción de datos en la tabla `producto`

INSERT INTO producto (Nombre, Descripcion, Finalizado, FaseNumero, Responsable) VALUES
('Informe de Investigación', 'Análisis de la competencia y mercado', 1, 1, 3),
('Prototipos de la Plataforma', 'Diseños de la interfaz y la experiencia', 1, 2, 2),
('Módulo de Cursos', 'Código del sistema de manejo de cursos', 0, 3, 1),
('Informe de Pruebas', 'Resultados de las pruebas de funcionalidad', 0, 4, 5),
('Manual de Implementación', 'Documentación para el despliegue del software', 0, 5, 4),
('Especificaciones Funcionales', 'Documento con requisitos del hotel', 1, 6, 3),
('API de Reservas', 'Código del servicio para las reservas', 0, 7, 6),
('Interfaz del App', 'Maquetación y código de la interfaz de usuario', 0, 8, 7),
('Modelos 3D', 'Archivos de los objetos del museo en 3D', 0, 9, 10),
('Estrategia de Lanzamiento', 'Plan para el lanzamiento de la app', 1, 10, 8);