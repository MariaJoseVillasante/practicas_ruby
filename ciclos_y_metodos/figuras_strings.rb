def menu
    puts "Seleccione una figura"
    puts "1. Cuadrado"
    puts "2. Triángulo"
    puts "3. Pirámide"
    puts "4. Salir"
end
def eleccion_jugador(jugador)
   # jugador = gets.chomp.downcase
    while jugador != 1 && jugador != 2 && jugador != 3 && jugador != 4
        puts "Ingrese una opción valida"
        break
        if jugador == "1"
            print "Jugador eligio cuadrado"
        elsif jugador == "2"
            print "Jugador eligio triángulo"
        elsif jugador == "3" 
            print "Jugador eligio pirámide"
        end
        #if else       
    end
    return jugador
end

def cuadrado(n)
    n.times do|i|
        n.times do|j|
            print "*"
        end
    end
end

def triangulo(n)
end

def piramide(n)
end
menu 
puts "Jugador 1 por favor elige una opcion: 1, 2, 3 o 4"
jugador = gets.chomp.downcase
eleccion_jugador(jugador)
puts "Ingresa un número: "
n = gets.chomp.to_i
if jugador == 1
    print cuadrado(n) 
elsif jugador == 2
    print triangulo(n)
elsif jugador == 3
    print piramide(n)
end
