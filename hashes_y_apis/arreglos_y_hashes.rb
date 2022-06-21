a = [1,2,3,4,5,6,7,8,9]
b = ["hola", 'a', 'todos', 'holitas']
#Group by
a.group_by{|x| x.even?}
print b.group_by{|x| x.length}
print "\n"
print b.group_by{|x| x[0]}
print "\n"
#zip
c = a.zip(b).to_h
print c
print "\n"

