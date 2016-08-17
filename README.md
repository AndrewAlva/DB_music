# README

## Descripción
Juani! Este es el primer ejercicio que estoy armando de entidad relación, está muy simple la relación, son 3 entidades únicamente:

* Artist

* Genre

* Song

No lo hice tan complejo como debería funcionar en realidad, limité las relaciones a estas:

* Un artista tiene muchas canciones
* Un género tiene muchas canciones
* Una canción pertenece a un artista
* Una canción pertenece a un género

* Nuevas relaciones
* Un artista tiene muchos géneros a través de sus canciones
* Un género tiene muchos artistas a través de sus canciones

## Preguntas

1. ¿Es posible crear un "partial" de una tabla que dependiendo del objeto dado aumente o disminuya columnas e imprima los datos correspondientes? Por ejemplo, que con sólo un partial de tabla pueda crear una tabla de 3 columnas con ciertos parámetros en una vista y que en otra cree una tabla de 6 columnas.
"Ver las vistas de 'genres'"

2. ¿Cómo se utiliza flash[:notice] para detectar inputs en blanco y regresarlos como un error?

## Troubleshooting

1. ForbiddenAttributesError

Problema resuelto, al parecer sólo había que utilizar un método privado (Strong Params) para traer los parámetros del nuevo objeto creado, detener el servidor y volverlo a correr.


En la carpeta "SOS" en el 'root' dejo los screenshot de los errores que regresa Rails. Puedes correr el seed para llenar los modelos.

Y este es el tutorial en el que está basado: http://biodegradablegeek.com/2007/12/understanding-basic-database-relationships-in-rails/