module MoviesData
    attr_accessor :nombre, :genero, :director
    def obtener_nombre
        "el nombre de la pelicula es #{nombre}"
    end
    def obtener_genero
        "el genero de la pelicula es #{genero}"
    end
    def obtener_director
        "el director de la pelicula es #{director}"
    end
    def hacer_resumen
        "La pelicula se llama #{nombre}
        y es del genero #{genero} y el director es #{director}"
    end
end