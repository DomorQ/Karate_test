# Karate Framework API Test Project

Este proyecto contiene pruebas automatizadas para la API de PetStore documentada en [Swagger PetStore](https://petstore.swagger.io/). Las pruebas incluyen añadir una mascota, consultar la mascota por ID, actualizar el nombre y el estado de la mascota, y consultar la mascota por estado.

## Requisitos

Antes de ejecutar el proyecto, asegúrate de tener instaladas las siguientes herramientas y configuradas en las variables de entorno:

- **Java Development Kit (JDK)**: Versión 17
- **Maven**: Versión 3.9.1
- **IDE**: IntelliJ IDEA (opcional, pero recomendado para facilitar el desarrollo)

### Configuración de Variables de Entorno

Asegúrate de que las siguientes variables de entorno estén configuradas:

- `JAVA_HOME`: Debe apuntar al directorio de instalación de JDK 17.
- `MAVEN_HOME`: Debe apuntar al directorio de instalación de Maven 3.9.1.
- Asegúrate de que las rutas a `bin` de cada herramienta estén incluidas en la variable de entorno `PATH`.

## Configuración del Proyecto en IntelliJ IDEA

1. Abre IntelliJ IDEA.
2. Importa el proyecto como un proyecto de Maven.
3. Asegúrate de que el SDK del proyecto esté configurado para usar JDK 17.

## Ejecución de las Pruebas

Para ejecutar las pruebas, sigue estos pasos:

1. Clona el repositorio desde GitHub:

bash
git clone https://github.com/tu-usuario/karate-api-test.git
cd karate-api-test


2. Ejecuta las pruebas usando Maven:

bash
mvn clean test

## Reportes

Después de ejecutar las pruebas, los reportes de Karate se generarán automáticamente. Puedes encontrarlos en la siguiente ubicación:

- `target/karate-reports/karate-summary.html`

Abre este archivo en un navegador web para ver los resultados detallados de las pruebas.

## Detalles de la Prueba

Las pruebas automatizadas realizan los siguientes pasos en la API de PetStore:

1. **Añadir una mascota a la tienda**: Se envía una solicitud para añadir una nueva mascota con detalles específicos.
2. **Consultar la mascota ingresada previamente**: Se realiza una búsqueda por ID para verificar que la mascota fue añadida correctamente.
3. **Actualizar el nombre de la mascota y el estatus a "sold"**: Se envía una solicitud para actualizar los detalles de la mascota.
4. **Consultar la mascota modificada por estatus**: Se realiza una búsqueda por estatus para verificar que la actualización fue exitosa.

## Información Adicional

Este archivo `README.md` se encuentra en la rama `main`, mientras que el proyecto principal está en la rama `Master`.

## Contribuciones

Si deseas contribuir a este proyecto, por favor crea un fork del repositorio y envía un pull request con tus cambios.
