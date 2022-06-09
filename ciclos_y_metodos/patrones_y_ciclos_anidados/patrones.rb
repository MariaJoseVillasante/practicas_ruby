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
        (n/2).times do 
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
    #Parte superior
    n.times do |i|
        (n).times do |j|
            if j==i || n-1==j+i
                print "*"
            else 
                print " "
            end
        end
        print "\n"
        
    end
    
    # puts "*   *"
    # puts " * * "
    # puts "  *   "
    # puts " * *"
    # puts "*   *"
end

def numero_cero(n)
    #Parte superior
    (n+1).times do
        print "*"
    end
    print "\n"
    #Parte del medio
    (n - 2).times do |i|
       # print "*"
        (n).times do |j|
            if j==(i+1) || j== 0 #|| j== (i+1)#i=n # (n-1) #|| j== (i+1)
                print "*"
            else 
                print " "
            end
        end
        print "*"
        print "\n"
    end
    # Parte inferior
    (n+1).times do |i|
        print "*"
    end
    # puts "*****"
    # puts "**  *"
    # puts "* * *"
    # puts "*  **"
    # puts "*****"
end

def navidad(n)
    n.times do |i|
        n.times do |j|
            if j==(n/2-i) || i==(n/2) || j==(n/2+i) || j==n/2# || i==n #&& 2<i<n 
                print "*"
            else 
                print " "
            end
        end
        print "\n"
    end
    
    # puts "   *"
    # puts "  * * "
    # puts " * * *"
    # puts "* * * *"
    # puts "   *   "
end

#letra_o(5)
#letra_i(3)
#letra_z(5)
#letra_x(5)
#numero_cero(5)
navidad(18)
