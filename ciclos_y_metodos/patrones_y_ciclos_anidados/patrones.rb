#letra = ARGV[0];

def letra_o(n)
    #Parte superior
    n.times do
        print "*"
    end
    print "\n"

    #Parte del medio
    (n - 2).times do
        print "*"
        (n - 2).times do 
            print " "
        end
        print "*"
        print "\n"
    end

    # Parte inferior
    n.times do |i|
        print "*"
    end
    
        # puts "*****"
        # puts "*   *"
        # puts "*   *"
        # puts "*   *"
        # puts "*****"
end

def letra_i(n)
    #Parte superior
    n.times do
        print "*"
    end
    print "\n"

    #Parte del medio
    (n-2).times do
        print " "
        (n/2-1).times do 
            print " "
        end
        print "*"
        print "\n"
    end
    
    # Parte inferior
    n.times do |i|
        print "*"
    end
    # puts "*****"
    # puts "  *  "
    # puts "  *   "
    # puts "  *  "
    # puts "*****"
end

def letra_z(n)
    #Parte superior
    n.times do
        print "*"
    end
    print "\n"

    #Parte del medio
    (n - 2).times do |i|
       # print "*"
        (n-i-2).times do |j|
            print " "
        end
        print "*"
        print "\n"
    end

    # Parte inferior
    n.times do |i|
        print "*"
    end
    # puts "*****"
    # puts "   *"
    # puts " *   "
    # puts "*  "
    # puts "*****"
end

def letra_x(n)
    puts "*   *"
    puts " * * "
    puts "  *   "
    puts " * *"
    puts "*   *"
end

def numero_cero(n)
    puts "*****"
    puts "**  *"
    puts "* * *"
    puts "*  **"
    puts "*****"
end

def navidad(n)
    puts "   *"
    puts "  * * "
    puts " * * *"
    puts "* * * *"
    puts "   *   "
end

#letra_o(5)
#letra_i(5)
letra_z(5)
##letra_x(5)
#numero_cero(8)
#navidad(5)
