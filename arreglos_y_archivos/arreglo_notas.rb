def promedio(array)
    notas = array.map {|x| x != 'N.A' ? x : 2.0}
    resultado = notas.sum/notas.length
end
ejemplo = [5,7,1,3,5,8,9,'N.A','N.A',3]
print promedio(ejemplo)