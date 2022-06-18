nombre_archivo_diccionario = ARGV[0]
palabra_a_hackear = ARGV[1]

=begin 
2- probar cada palabra del diccionario mas 1 12 123 "imprimir"
3- si no está avisar y probar forma ya resuelta 
imprimir iteraciones
=end
def busqueda_dic(nombre_archivo_diccionario, palabra_a_hackear)  
    reglones = File.readlines(nombre_archivo_diccionario)
    n = reglones.count
    counter = 1
    n.times do |i|
        if reglones[i].chomp == palabra_a_hackear
            puts "Encontrada al intento #{counter}"
            counter += 1
            exit
        end
        print counter += 1
    end
    #puts counter
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