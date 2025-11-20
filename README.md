🗄️ Creación y configuración de la Base de Datos

El proyecto utiliza una base de datos llamada:

teg

La estructura completa de tablas (acceso y registro) se encuentra en el archivo:

/database/teg.sql

incluido en este repositorio. Este archivo contiene todas las instrucciones necesarias para crear las tablas y cargar los datos iniciales.


1️⃣ Crear la base de datos

Antes de importar el archivo .sql, crea la base de datos vacía:

CREATE DATABASE teg
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;


2️⃣ Importar el archivo SQL

El archivo teg.sql incluye:

La tabla acceso

La tabla registro

El usuario inicial (admin / 1234)

La estructura completa del sistema

Para importarlo:

Opción A: phpMyAdmin

Seleccionar la base de datos teg.

Abrir la pestaña Importar.

Seleccionar el archivo teg.sql.

Ejecutar.


3️⃣ Tablas incluidas en el proyecto
Tabla acceso

Almacena los usuarios que pueden iniciar sesión en la aplicación Java.

Campos principales:

usuario → nombre de acceso

clave → contraseña del sistema

tipo → rol del usuario (por ejemplo: administrador)

El archivo SQL incluye el usuario inicial:

usuario: admin
clave: 1234

Esta cuenta está pensada como acceso predeterminado para el sistema.
Los administradores pueden crear más usuarios desde la aplicación.

Tabla registro

Contiene toda la información relacionada con los TEG:

Título

Autor(es)

Tutor(es)

Línea o área de investigación

Resumen

Año de presentación

Otros datos relevantes

Toda la gestión de trabajos de grado que aparece en la aplicación depende de esta tabla.


4️⃣ Configuración de conexión en el proyecto

El archivo con los datos de conexión se encuentra en:

/src/config/Conexion.java

Valores recomendados:

private static final String URL = "jdbc:mysql://localhost:3306/teg";
private static final String USER = "root";       // o el usuario que uses
private static final String PASSWORD = "";       // tu contraseña de MySQL
