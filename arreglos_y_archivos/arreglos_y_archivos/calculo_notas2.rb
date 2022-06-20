data = open('notas.data').readlines
n = data.count
info_alumno = []
mejores_notas = []
n.times do |i|
    info_alumno << data[i].split(',')
    5.times do |j|
        info_alumno[i][j] = info_alumno[i][j].to_i if j > 0
    end
    mejores_notas.push([info_alumno[i][1],info_alumno[i][2],info_alumno[i][3]].max)
    #print info_alumno[i][0] + " "
    #puts [info_alumno[i][1],info_alumno[i][2],info_alumno[i][3]].max
end
print mejores_notas

