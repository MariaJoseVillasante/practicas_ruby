data = open('ventas_base.db').read.chomp.split(',')
ventas = []
data.each do |j|
    ventas.push j.to_f
end 
print ventas
#Primera mitad del primer semestre aumenta 10% más.
#la segunda mitad aumenta 20% más.

ventas_aumentadas = []
ventas.each do |j|
    ventas_aumentadas.push((j*1.1).round(2))
end
print ventas_aumentadas#.round(2)

