print "Cuantos numeros quiere imprimir: "
n = gets.chomp.to_i

(1..n).each do |i|
    if i.even?
        print i
    else
        print "."
    end
end

#(0..n).each {|i| print "#{i}."}
#ingresa pares de números alternando numeros y puntos
=begin
    
rescue => exception
    
end(1..n).each do |i| 
    print "#{i}."
end
=end
#para imprimir abecedario
# abecedario=[*'A'..'Z']
# print abecedario
