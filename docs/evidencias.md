Evidencias de ejecución
Entorno utilizado
Sistema operativo: Windows
Herramienta de contenedores: Docker Desktop
Motor de base de datos: PostgreSQL
Herramienta de migración: Liquibase
Comandos ejecutados

1. Inicio de contenedores

docker-compose up -d

2. Ejecución de migraciones

docker-compose run liquibase --defaultsFile=liquibase.properties update
Resultado obtenido

Liquibase ejecutó satisfactoriamente todos los changesets definidos en el proyecto.

Resumen de ejecución:

Creación de tablas completada (DDL)
Inserción de datos realizada (DML)
Actualizaciones aplicadas correctamente
Eliminaciones ejecutadas sin inconvenientes
Ejecución finalizada sin errores
Salida esperada
Liquibase: Update has been successful
Validación de datos

Se llevaron a cabo consultas ubicadas en:

scripts/queries/

Con el objetivo de verificar:

Existencia de registros en la tabla persona
Integridad en la relación entre usuario y factura
Consistencia de datos en detalle_factura
Problemas encontrados

Durante la ejecución surgió un inconveniente relacionado con el driver de PostgreSQL.

Solución aplicada:

Descarga del driver JDBC de PostgreSQL
Ubicación del archivo en la carpeta /drivers
Configuración del archivo docker-compose.yml para su correcta detección por Liquibase
Conclusión

El sistema funciona correctamente utilizando Docker y Liquibase, cumpliendo con los objetivos planteados:

Separación clara entre DDL y DML
Implementación de control de versiones en la base de datos
Ejecución reproducible del entorno
Validación efectiva de la información almacenada