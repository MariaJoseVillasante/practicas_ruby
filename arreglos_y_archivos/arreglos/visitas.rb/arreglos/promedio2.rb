arreglo1 = [2000,80,1250,300,50,250]
arreglo2 = [1000,800,250,300,500,2500]

def promedio(arreglo)
    promedio = arreglo.sum/arreglo.count
end

def compara(n1,n2)
    if n1 > n2
        resultado = n1
    elsif n2 > n1
        resultado = n2
    else
        resultado = "empate"
    end 
    puts "El número mayor es #{resultado}"
end

x1 = promedio(arreglo1)
x2 = promedio(arreglo2)
compara(x1,x2)