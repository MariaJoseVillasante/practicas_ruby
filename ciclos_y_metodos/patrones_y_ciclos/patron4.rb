numero = ARGV[0].to_i

numero.times do |i|
    if i % 3 == 0
        print "1"
    elsif i % 3 == 1
        print "2"
    elsif i % 3 == 2
        print "3"
    end
end

print "\n"
puts 5%4