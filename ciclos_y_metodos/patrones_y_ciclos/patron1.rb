numero = ARGV[0].to_i

numero.times do |i|
    if i.even?
        print "*"
    else 
        print "."
    end
end

print "\n"