nombre_archivo_diccionario = ARGV[0]
palabra_a_hackear = ARGV[1]

=begin 
1- buscar si la palabra ingresada está en el diccionario "imprimir"
2- probar cada palabra del diccionario mas 1 12 123 "imprimir"
3- si no está avisar y probar forma ya resuelta 
imprimir iteraciones
=end
def busqueda_dic(nombre_archivo_diccionario, palabra_a_hackear)  
    reglones = File.readlines("diccionario.txt")
    counter = 0
    reglones.each do |i|
        if reglones == palabra_a_hackear
            puts "Encontrada al intento #{counter}"
        end
        counter += 1
    end
    puts counter
end
def busqueda_dic_apliada
end
def busqueda_sin_dic
    password = ARGV[0]
    nueva = "a"
    intentos = 0
    while password != nueva
        nueva = nueva.next
        intentos += 1  
    end
    puts "#{intentos} intentos"

end

#busqueda_dic(ARGV[0],ARGV[1])
busqueda_dic(nombre_archivo_diccionario,palabra_a_hackear)