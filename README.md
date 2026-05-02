# task-mgbd-liquiba
task-mgbd-liquiba
🧪 Taller investigativo: Creación de base de datos con Liquibase
📌 Descripción
Este proyecto tiene como objetivo desarrollar una base de datos relacional empleando Liquibase como herramienta de control de versiones. Las migraciones se organizan en dos categorías: DDL (definición de estructura) y DML (gestión de datos), todo ejecutado dentro de un entorno reproducible utilizando Docker.

🧱 Organización del proyecto
task-mgbd-liquibase/│├── db/changelog/│   ├── ddl/                # Definición de estructuras (tablas)│   ├── dml/                # Inserción y modificación de datos│   └── db.changelog-master.yaml│├── scripts/queries/        # Consultas para validación├── docs/                   # Archivos de documentación y evidencias├── drivers/                # Controlador de PostgreSQL│├── docker-compose.yml      # Configuración de servicios en contenedores├── liquibase.properties    # Parámetros de conexión└── README.md

⚙️ Tecnologías empleadas


Docker


Docker Compose


PostgreSQL


Liquibase



🚀 Requisitos


Tener Docker Desktop instalado


Contar con virtualización habilitada



▶️ Pasos de ejecución
1. Clonar el repositorio
https://github.com/Daniel666-ui/task-mgbd-liquibase.git

2. Iniciar el contenedor de base de datos
docker-compose up -d

3. Ejecutar las migraciones con Liquibase
docker-compose run liquibase --defaultsFile=liquibase.properties update

🔄 Flujo de ejecución


Se inicia el contenedor de PostgreSQL


Se aplican las migraciones DDL (creación de tablas)


Se ejecutan las migraciones DML (carga de datos)


Se realizan consultas para validar la información



🧩 Modelo de datos
El diseño incluye únicamente las siguientes tablas:


persona


rol


usuario


producto


factura


detalle_factura


Las relaciones entre ellas se establecen mediante claves foráneas.

🔍 Validación
Las consultas de verificación se encuentran en:
scripts/queries/
Estas permiten comprobar:


Registros en la tabla persona


Relación entre usuario y factura


Información almacenada en detalle_factura



📚 Documentación


Investigación: docs/investigacion-liquibase.md


Evidencias: docs/evidencias.md



✅ Resultado esperado
Al ejecutar correctamente el proyecto, se debe visualizar el siguiente mensaje:
Liquibase: Update has been successful

🎯 Conclusión
Este proyecto evidencia el uso de Liquibase como herramienta para gestionar cambios en bases de datos, ofreciendo ventajas como:


Versionamiento controlado


Separación entre estructura y datos


Entornos reproducibles mediante Docker


Validación a través de consultas