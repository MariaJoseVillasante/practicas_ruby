def chart(array)
    n = array.max
    largo = array.length
    array.each do |numero|
        print "|"
        print "*" * (numero*2) 
        print "\n"
    end
    print ">"
    print "-" * (n*2)
    print "\n"
    n.times do |i|
        print i+1
        print " "
    end
    print "\n"
end

chart([5,3,2,5,10])