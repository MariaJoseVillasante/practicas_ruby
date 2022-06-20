def filter(hash_ventas, values)
    hash_ventas.select{|k,v| v > values}
end
ventas = {
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000 
    }
print filter(ventas, 70000)
