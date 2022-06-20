data = open('notas.data').readlines
info_alumno = data.map {|x| x.split(',')}
n = info_alumno.count
mejores_notas = []
n.times do |i|
    5.times do |j|
        info_alumno[i][j] = info_alumno[i][j].to_i if j > 0
    end
end
def nota_mas_alta(arreglo_notas_nombre)
    nota_mayor = ([arreglo_notas_nombre[1],arreglo_notas_nombre[2],arreglo_notas_nombre[3],arreglo_notas_nombre[4]].max)
    return nota_mayor
end
puts nota_mas_alta(info_alumno[1])

