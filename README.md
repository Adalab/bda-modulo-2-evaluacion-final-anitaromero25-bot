## DE APIS A BASE DE DATOS DE PELICULAS

# Descripción del proyecto:
Este proyecto forma parte de la evaluación del módulo 2 y consta de dos fases:
1. Extraer datos de una Api, procesarlos y crear con ellos una base de datos.
2. Realizar consultas sobre una base de datos.

# Objetivos del proyecto:
* Extraer datos desde una API que contiene información de 100 películas.

* Procesar los datos extraidos.

* Crear una base de datos MySQL con la estructura adecuada.

* Insertar los datos extraídos en dicha base de datos.

* Realizar consultas SQL para responder preguntas sobre los datos.

# Desarrollo del proyecto:
1. Se crea una función para llamar a la Api donde se contemplan posibles errores a la hora de llamar a la Api.
La Api facilitada es: https://beta.adalab.es/resources/apis/pelis/pelis.json
Se obtienen 100 peliculas con sus datos.
La extracción se realiza con Python utilizando peticiones HTTP y se convierten a formato json.

2. Procesamiento de los datos convirtiendo formato json en un DataFrame desde donde se revisa: posibles valores nulos, tipos de datos y coherencia en los mismos. 
Esto asegura que los datos estén listos para ser insertados en una base de datos.

3. Conexión de Paython a MySQL usando try/expept para contemplar excepciones.
Posteriormente se crea la base de datos bd_peliculas_adalab y la tabla peliculas.

4. Insertar datos

5. Consultas sobre la base de datos creada desde Paython. Para llevarlas a cabo se ha usado los siguientes métodos:
-cursor.execute()
-fetchone() y fetchall() para visualizar los datos de la consulta
- libreria pandas para mostrar los resultados en DataFrame
- el método pd.read_sql_query() para mostrar los resultados directamente desde pandas

6. En la segunda parte se realizan consultas a la base de datos Sakila desde MySQL. Para ello se ha usado el lenguaje SQL.

# Tecnologías utilizadas:
* Paython
* Librerias importadas:
 requests: para conectar con Api y descargar los datos
 pandas as pd: para convertir los datos en formato tabla
 mysql.connector: para conectar Paython con MySQL
 numpy as np: para convertir formato nan de Paython a none de MySQL
 from mysql.connector import Error: captura errores de MySQL
 * MySQL Workbench
 * Git Hub 
 * Visual Studio Code (Jupiter Notebook)

 # Resultado del proyecto:
  Al finalizar este proyecto, se obtiene:
  * Un conjunto de datos limpios con 100 películas.
  * Una base de datos funcional en MySQL.
  * Consultas SQL que permiten analizar la información.