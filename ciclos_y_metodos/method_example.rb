def bienvenida
    puts "Bienvenido al curso de Ruby 2022 de Edutecto"
end

def saludo_personalizado(nombre)
    puts "Hola como estamos?. Te puedo apoyar en algo #{nombre}"
end

def saludos_con_tiempo(nombre,tiempo)
    puts "Buenas #{tiempo}, como esta #{nombre}"
end
bienvenida
print "Dame tu nombre"
nombre = gets.chomp
tiempo = "tardes"
saludo_personalizado(nombre)
saludos_con_tiempo(nombre,tiempo)