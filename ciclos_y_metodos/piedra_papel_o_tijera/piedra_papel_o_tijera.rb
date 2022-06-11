def imprimir_menu
    opcion_menu = gets.chomp.downcase
    if opcion_menu != 'piedra' || opcion_menu != 'papel' || opcion_menu != 'tijera'
        print "Ingresa una opción válida: priedra, papel o tijera: "
    else
        puts 'Jugador, elige una de las siguientes alternativas: '
        puts '1- Piedra'
        puts '2- Papel'
        puts '3- Tijera'
        puts 'Escribe "Salir" para terminar el programa'
        puts 'Ingresa una opción: '
    end
end

def piedraPapeloTijera()
end

# Inicio

opcion_menu = 'piedra'
imprimir_menu
jugador1 = gets.chomp.downcase
imprimir_menu
jugador2 = gets.chomp.downcase


while opcion_menu != 'Salir'
    if jugador1 == jugador2
        puts "Empate"
    elsif jugador1 == "piedra" && jugador2 == "tijera" || jugador1 == "papel" && jugador2 == "piedra" || jugador1 == "tijera" && jugador2 == "papel" 
        puts "Gana el jugador 1"
    else 
        puts "Gana el jugador 2"# puts "imprimir_menu"
    end
end
