data = open('notas.data').readlines
info_alumno = data.map {|x| x.split(',')}
n = info_alumno.count
mejores_notas = []
n.times do |i|
    n_interior = info_alumno[i].count
    n_interior.times do |j|
        info_alumno[i][j] = info_alumno[i][j].to_i if j > 0
    end
end
#print info_alumno
def nota_mas_alta(arreglo_notas_nombre)
    solo_notas = arreglo_notas_nombre.select{ |x| x.class == Integer}
    return solo_notas.max
end
puts nota_mas_alta(info_alumno[1])

