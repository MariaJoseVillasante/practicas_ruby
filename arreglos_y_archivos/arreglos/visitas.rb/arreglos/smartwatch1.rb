pasos = ['100','21','231as', '2031','1052000','213b','b123']

def clear_steps(arreglo)
    arreglo.map!{|i| i.to_i} #!!!!!!!
    arreglo.reject{|i| i < 200 || i > 100000}
end

print clear_steps(pasos)