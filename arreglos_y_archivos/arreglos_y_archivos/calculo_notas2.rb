data = open('notas.data').readlines
n = data.count
info_alumno = []
mejores_notas = []
n.times do |i|
    info_alumno << data[i].split(',')
    n_interior = info_alumno[i].count
    (1..n_interior).each do |j|
        info_alumno[i][j] = info_alumno[i][j].to_i
    end
end
def nota_mas_alta(arreglo)
    notas = []
    n = arreglo.length
    (0..(n-1)).each do |i| 
        notas[i] = arreglo[i].select{ |x| x.class == Integer}.max
    end
    print notas 
end 
nota_mas_alta(info_alumno)

