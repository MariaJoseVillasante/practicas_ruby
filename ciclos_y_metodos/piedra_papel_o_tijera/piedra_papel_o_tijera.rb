def imprimir_menu
    puts 'Jugador, elige una de las siguientes alternativas: '
    puts '1- Piedra'
    puts '2- Papel'
    puts '3- Tijera'
    puts 'Escribe "Salir" para terminar el programa'
    puts 'Ingresa una opción: '
end
    
def juego  
    #puts "Jugador 1 elije"
    jugador1 = gets.chomp.downcase
    if jugador1 == "salir"
        exit
    elsif jugador1 != "piedra" || jugador1 != "papel" || jugador1 != "tijera"
        puts "Ingresa una opción válida"
    #     exit
    end
    #puts "Jugador 2 elije"
    imprimir_menu
    jugador2 = gets.chomp.downcase
    if jugador2 == "salir"
        exit
    end
    #while jugador1 != 'salir' || jugador2  != 'salir'   
    if jugador1 == jugador2
        puts "Empate"
    elsif jugador1 == "piedra" && jugador2 == "tijera" || jugador1 == "papel" && jugador2 == "piedra" || jugador1 == "tijera" && jugador2 == "papel" 
        puts "Gana el jugador 1"
    elsif jugador2 == "piedra" && jugador1 == "tijera" || jugador2 == "papel" && jugador1 == "piedra" || jugador2 == "tijera" && jugador1 == "papel"  
        puts "Gana el jugador 2"# puts "imprimir_menu"
    else
        puts "Opción inválida"
        #break
    end
    # puts "Jugador 1 elije"
    # jugador1 = gets.chomp.downcase
    # puts "Jugador 2 elije"
    # jugador2 = gets.chomp.downcase
    # end
    puts "Gracias por jugar"
end

imprimir_menu
juego