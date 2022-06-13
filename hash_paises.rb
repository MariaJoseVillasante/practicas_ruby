paises = {'Mexico' => 100, 'Chile' => 233, 'Alemania' => 30, 'Estados Unidos' => 77}

puts "Estos son los paises"
print paises.keys
puts "estos son sus valores"
print paises.values
puts '--------------------------------'
paises.reject!{|key,value| value < 55}#!para hacerlo permanente y despues imprimir
print paises #se podría imprimir aca sin el !

#"paises.values.each" para el iterador