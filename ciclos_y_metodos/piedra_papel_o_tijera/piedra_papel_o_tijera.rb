def imprimir_menu
    puts 'Jugador, elige una de las siguientes alternativas: '
    puts '1- Piedra'
    puts '2- Papel'
    puts '3- Tijera'
    puts 'Escribe "Salir" para terminar el programa'
    puts 'Ingresa una opción: '
end

opcion_menu = 'piedra'
#while opcion_menu != 'salir'
    imprimir_menu
    jugador1 = gets.chomp.downcase
    imprimir_menu
    jugador2 = gets.chomp.downcase

while opcion_menu =! 'salir'
    if jugador1 == jugador2
        puts "Empate"
    elsif jugador1 == "piedra" && jugador2 == "tijera" || jugador1 == "papel" && jugador2 == "piedra" || jugador1 == "tijera" && jugador2 == "papel" 
        puts "Gana el jugador 1"
    elsif #jugador2 == "piedra" && jugador1 == "tijera" || jugador2 == "papel" && jugador1 == "piedra" || jugador2 == "tijera" && jugador1 == "papel"  
        puts "Gana el jugador 2"# puts "imprimir_menu"
    else
    end
end

