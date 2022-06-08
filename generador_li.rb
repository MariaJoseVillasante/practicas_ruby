#Pedimos valor
print "Cuantos items tendrá tu lista de html?"
n_item = gets.chomp.to_i
#Imprimimos lista
while n_item > 0
    puts "<li>#{n_item}</li>"
    n_item-=1
end