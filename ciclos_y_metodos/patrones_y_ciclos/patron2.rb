numero = ARGV[0].to_i

numero.times do |i|
    if i%4 == 0 || i%4 ==1
        print "*"
    else 
        print "."
    end
end

print "\n"