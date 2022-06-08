print "Cuantos numeros quiere imprimir"
n = gets.chomp.to_i
#(0..n).each {|i| print "#{i}."}

(1..n).each do |i| 
    print "#{i}."
end

# abecedario=[*'A'..'Z']
# print abecedario
