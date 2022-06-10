=begin Adictos a redes Se tiene un arreglo con la cantidad 
de minutos usados en redes sociales de distintos usuarios. 
Se pide crear el programa adictos_a_redes.rb con un método 
llamado scan_addicts que reciba un arreglo con los minutos 
de uso y como resultado entregue un nuevo arreglo cambiando
 todas las medidas inferiores a 90 minutos como 'bien' y 
 todas las mayores o iguales a 90 como 'mal'.
=end
minutos = [90,120,500,200,50,30,45,700]

#mayor o igual a 90 es mal
def scan_addicts(minutos)
    resultado= []
    minutos.each do |j|
        if j>=90
            resultado.push("mal")     
        else
            resultado.push("bien")
        end
    end
    #resultado = minutos.select { |num| if num > 90}
    print resultado
end
scan_addicts(minutos)