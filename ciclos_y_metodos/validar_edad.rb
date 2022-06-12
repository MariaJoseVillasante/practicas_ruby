def validar_edad
    edad = gets.to_i
    if edad >= 18
        puts "Es mayor de edad"
    else
        puts "Es menor de edad"
    end
end
print "Dame una edad: "
validar_edad
print "Dame una edad: "
validar_edad
print "Dame una edad: "
validar_edad