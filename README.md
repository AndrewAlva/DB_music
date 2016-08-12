# README

Juani! Este es el primer ejercicio que estoy armando de entidad relación, está muy simple la relación, son 3 entidades únicamente:

* Artist

* Genre

* Song

No lo hice tan complejo como debería funcionar en realidad, limité las relaciones a estas:

* Un artista tiene muchas canciones
* Un género tiene muchas canciones
* Una canción pertenece a un artista
* Una canción pertenece a un género

Estaba siguiendo un tutorial en internet pero en la vista 'browse' de Géneros no puedo obtener un objeto a través del controlador, el tutorial no me dice que debería de aparecerme algún error, y lo cagado es que si traigo los géneros desde la vista si funciona, te dejé comentados los comandos con los que si jala y los errores en los que no.

También en la carpeta "SOS" en el 'root' te dejo el screenshot del error que me aparece. Puedes correr el seed para llenar los modelos.

Y este es el tutorial que estoy haciendo: http://biodegradablegeek.com/2007/12/understanding-basic-database-relationships-in-rails/