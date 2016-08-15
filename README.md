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

¿Es posible crear un "partial" de una tabla que dependiendo del objeto dado aumente o disminuya columnas e imprima los datos correspondientes? Por ejemplo, que con sólo un partial de tabla pueda crear una tabla de 3 columnas con ciertos parámetros en una vista y que en otra cree una tabla de 6 columnas.
"Ver las vistas de 'genres'"

## Troubleshooting

1. ForbiddenAttributesError

Estoy creando un formulario para que un usuario pueda subir artistas desde su browser, pero cuando lo va a guardar marca un error de "atributos prohibidos", y regresa un "permitted: false". Ya verifiqué que el valor de los atributos sea el data type correcto, en el caso de ":name" es String y en ":age" es Fixnum (o sea integer), y en el controlador estoy utilizando "Strong Params" así:

	def new
		@artist = Artist.new(artist_params)
		@artist.save

		redirect_to :action => :index
	end

	private
		def artist_params
			params.require(:artist).permit(:name, :age)
		end


En la carpeta "SOS" en el 'root' dejo los screenshot de los errores que regresa Rails. Puedes correr el seed para llenar los modelos.

Y este es el tutorial en el que está basado: http://biodegradablegeek.com/2007/12/understanding-basic-database-relationships-in-rails/