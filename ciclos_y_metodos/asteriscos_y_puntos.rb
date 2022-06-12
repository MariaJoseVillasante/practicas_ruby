n = ARGV[0].to_i
(1..n).each do |i|
    if i.even? 
        print "."
    else  
        print "*"
    end
end