a = [1,2,3,4,5,6,7,8,9]
b = ["hola", 'a', 'todos', 'holitas']
#Group by
a.group_by{|x| x.even?}
print b.group_by{|x| x.length}#{4=>["hola"], 1=>["a"], 5=>["todos"], 7=>["holitas"]}
print "\n"
print b.group_by{|x| x[0]}#{"h"=>["hola", "holitas"], "a"=>["a"], "t"=>["todos"]}
print "\n"
#zip
c = a.zip(b).to_h
print c #{1=>"hola", 2=>"a", 3=>"todos", 4=>"holitas", 5=>nil, 6=>nil, 7=>nil, 8=>nil, 9=>nil}
print "\n"
#map
d = a.map do |e|
    e * 2
end
d = a.map {|e| e * 2 if e == 9}
print d #[nil, nil, nil, nil, nil, nil, nil, nil, 18]
#reject
e = a.reject{|x| x.even?}
print e #[1, 3, 5, 7, 9]
#inject
f = a.inject(0){|sum, x| sum += x}
print f #45