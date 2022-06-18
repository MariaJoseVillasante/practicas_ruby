nombre_archivo_diccionario = ARGV[0]
palabra_a_hackear = ARGV[1]

def busqueda_dic(nombre_archivo_diccionario, palabra_a_hackear)  
    reglones = File.readlines(nombre_archivo_diccionario)
    n = reglones.count
    counter = 1
    opciones = ["","1","12","123"]
    n.times do |i|
        opciones.each do |adicional| 
            if reglones[i].chomp + adicional == palabra_a_hackear
                puts "Encontrada al intento #{counter}"
                counter += 1
                exit
            end
        #print counter += 1
        end
    end
    #puts counter
end

busqueda_dic(nombre_archivo_diccionario,palabra_a_hackear)