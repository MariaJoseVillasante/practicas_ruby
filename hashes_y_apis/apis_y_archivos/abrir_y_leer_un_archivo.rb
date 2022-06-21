#Leer todo un archivo y guardarlo en un string
content = File.read 'file.txt'#si el archivo no es muy grande
#Transformar datos un archivo
data = File.open('data').read.chomp.split(',')
#Leer un archivo de múltiples líneas
data = File.open('archivo2').readlines
#Guardar los resultados
File.write('/path/to/file','datos')