numero = ARGV[0].to_i

numero.times do |i|
    if i.even?
        print "1"
    else 
        print "2"
    end
end

print "\n"