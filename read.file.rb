require "CSV"
puts data = open('data.data').read
#Leyendo información de archivo y pasandolo a array
print data2 = open('data.data').read.chomp.split(',')
#Leyendo lineas de un archivo
reglones = File.readlines("texto.txt")
puts ""
reglones.each do |r|
    puts r.upcase
end
#leer un csv
print mexican_food = CSV.read('mexican_food.csv') 
print mexican_food   