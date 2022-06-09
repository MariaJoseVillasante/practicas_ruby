numero=[*1..1000]
numeros_pares = []

# numero.each do |j|
#     if j.even?
#         numeros_pares.push(j)
#     end
# end
#numero.select {|num| puts num.even? ? numeros_pares.push(num): none}
numeros_pares = numeros.select { |num| num.even?}
print numeros_pares