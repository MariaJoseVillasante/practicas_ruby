def menu
    puts "Seleccione una figura"
    puts "1. Cuadrado"
    puts "2. Triángulo"
    puts "3. Pirámide"
    puts "4. Salir"
end
def eleccion_jugador
   jugador = gets.chomp.to_i
    while jugador != 1 && jugador != 2 && jugador != 3 && jugador != 4
        puts "Ingrese una opción valida"
        jugador = gets.chomp.to_i
        if  jugador == 4  
            exit
        end
    end
    if jugador == 1
        eleccion_jugador = 'Cuadrado'
    elsif jugador == 2
        eleccion_jugador = 'Triángulo'
    elsif jugador == 3
        eleccion_jugador = 'Pirámide'
    end
    print "El jugador eligió #{eleccion_jugador}.  "
    return jugador
end
def eleccion_figura
    n = gets.chomp.to_i
    while n < 0 || n > 10
        puts "Ingresa un número entre 1 y 10"
        n = gets.chomp.to_i
    end
    return n
end
def figura(jugador,n)
    if jugador == 1
        n.times do|i|   
            n.times do|j|
                print "*"
            end
            puts '*'
        end
    elsif jugador == 2
        n.times do|i|   
            i.times do|j|
                print "*"
            end
            puts '*'
        end
    elsif jugador == 3
        n.times do|i|   
            i.times do|j|
                print "*"
            end
            puts '*'
        end
        n.times do|i|   
            (n-i).times do|j|
                print "*"
            end
            puts '*'
        end
        puts '*'
    end          
end

menu 
puts "Jugador, por favor elige una opcion: 1, 2, 3 o 4"
jugador = eleccion_jugador
puts "Ingresa un número: "
n = eleccion_figura #gets.chomp.to_i
figura(jugador,n)
