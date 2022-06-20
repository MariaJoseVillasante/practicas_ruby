def to_minutes(arreglo)
    minutes = arreglo.map {|x| (x/60).to_i}   
end
seconds = [100, 50, 1000, 5000, 1000, 500]
print to_minutes(seconds)