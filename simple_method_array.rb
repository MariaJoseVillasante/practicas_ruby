arregloInt = [4923,32,745,3232,89,2,1,898,777,2]
arregloString = ["Miguel","Paula","Juana","Maria","Natalia","Cesar"]
#Operaciones con arreglos
puts arregloInt.size
puts arregloString.length
print arregloInt.reverse
print arregloString.reverse
puts arregloInt.shuffle
puts ""
puts arregloInt.include?(777)
puts arregloString.include?('Roberto')
puts arregloString.delete("Cesar")
print arregloString
arregloString.delete_at(2)
print arregloString
arregloString.shuffle! #Lo deja permanente con el !
