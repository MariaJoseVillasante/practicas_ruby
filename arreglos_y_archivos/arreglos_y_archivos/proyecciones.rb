#Primera mitad del primer semestre aumenta 10% más.
#la segunda mitad aumenta 20% más.
#tb puede ser .readlines (si estan en lineas separadas)
def read_file(filename)
    data = open(filename).read.chomp.split(',')#en este caso no funciona sin .db
    ventas = []
    data.each do |j|
        ventas.push j.to_f.round(2) #ventas << data[i].to_f
    end 
    return ventas
end
ventas = read_file('ventas_base.db')
12.times do |i| #siempre son 12 meses del año
    ventas[i] = (ventas[i]*1.1).round(2) if i < 3
    ventas[i] = (ventas[i]*1.2).round(2) if i > 9
end
print ventas
#crea un archivo nuevo y lo sobreescribe si ya está creado
File.write('resultado.data', ventas.join("\n"))
