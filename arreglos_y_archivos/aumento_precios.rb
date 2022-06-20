def augment(arreglo,multiplicador)
    resultado = arreglo.map {|x| (x * multiplicador).round(2)}
end 
prueba = [4, 6, 90, 123, 56]
multiplicador = 1.1
print augment(prueba,multiplicador)