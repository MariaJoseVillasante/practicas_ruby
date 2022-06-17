require_relative 'modules/movies_data'
require_relative 'lib/peliculas'
require_relative 'lib/documental'
require_relative 'lib/series'

pelicula =Peliculas.new
pelicula.nombre = 'Garra'
pelicula.genero = 'Comedia'
pelicula.director = 'Jeremiah Zagar'
puts pelicula.hacer_resumen

documental =Documentales.new
documental.nombre = 'Nuestro Padre'
documental.genero = 'Drama'
documental.director = 'Jeremiah Zagar'
puts documental.hacer_resumen

serie =Series.new
serie.nombre = 'This is us'
serie.genero = 'Drama'
serie.director = 'Dan Fogelman'
puts serie.hacer_resumen