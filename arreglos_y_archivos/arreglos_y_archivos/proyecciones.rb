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
    ventas_aumentadas.push((j).round(2))   
end
#print ventas_aumentadas

(0..2).each do |i|
    ventas_aumentadas[i] = (ventas_aumentadas[i]*1.1).round(2)
end
print ventas_aumentadas
(9..11).each do |i|
    ventas_aumentadas[i] = (ventas_aumentadas[i]*1.2).round(2)
end
print ventas_aumentadas
