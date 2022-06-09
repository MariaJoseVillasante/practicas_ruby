a=[4,3,2,7]
sumaVal=0
suma2=0
a.each do |i|
    sumaVal= sumaVal + i    
end
puts sumaVal
b=[*1..100] #lo hace array
# b.each do |j|
#     suma2 += j
# end
b.each {|j| suma2+=j}
puts suma2

b.each do |j|
    puts j*2
end