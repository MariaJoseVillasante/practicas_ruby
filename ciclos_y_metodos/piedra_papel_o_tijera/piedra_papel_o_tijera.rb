def imprimir_menu
    puts 'Jugador, elige una de las siguientes alternativas: '
    puts '1- Piedra'
    puts '2- Papel'
    puts '3- Tijera'
    puts 'Escribe "Salir" para terminar el programa'
end
def jugador(n)
    opcion_jugador = gets.chomp.downcase
    while opcion_jugador != 'piedra' && opcion_jugador != 'papel' && opcion_jugador != 'tijera' && opcion_jugador != 'salir'
        puts "Ingresar una opción válida"
        opcion_jugador = gets.chomp.downcase
        if opcion_jugador == 'salir'
            exit
        end
    end
    return opcion_jugador
   puts "Jugador #{n} elegiste #{opcion_jugador}" 
end
def juego(jugador1,jugador2)  
    if jugador1 == jugador2
        puts "Empate"
    elsif jugador1 == "piedra" && jugador2 == "tijera" || jugador1 == "papel" && jugador2 == "piedra" || jugador1 == "tijera" && jugador2 == "papel" 
        puts "Gana el jugador 1"
    elsif jugador2 == "piedra" && jugador1 == "tijera" || jugador2 == "papel" && jugador1 == "piedra" || jugador2 == "tijera" && jugador1 == "papel"  
        puts "Gana el jugador 2"
    end
    puts "Gracias por jugar"
end

imprimir_menu
puts "Jugador 1 escribe tu opción: "
jugador1 = jugador(1)
imprimir_menu
puts "Jugador 2 escribe tu opción: "
jugador2 = jugador(2)
juego(jugador1,jugador2)