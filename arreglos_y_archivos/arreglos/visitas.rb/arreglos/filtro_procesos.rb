n = ARGV[0].to_i
proce = ['121', '141', '159', '131', '199', '121', '299', '312', '412', '024', '213']

def procesos(arreglo,limite)
    arreglo.map!{|i| i.to_i} #!!!!!!!
    arreglo.reject{|i| i < limite}
end

puts procesos(proce,n)