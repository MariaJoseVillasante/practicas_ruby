numero = ARGV[0].to_i
suma = 0
(numero+1).times do |i|
    if i.even?
        suma += i
    end
end

print suma
