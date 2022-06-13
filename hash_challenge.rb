n = ARGV[0]
numeros_romanos = {'1' => 'I', '2' => 'II', '3' => 'III', '4' => 'IV', '5' => 'V', '6' => 'VI',
                    '7' => 'VII', '8' => 'VIII', '9' => 'IX', '10' => 'X'}
puts numeros_romanos[n]
puts numeros_romanos.has_key?(n)
puts numeros_romanos.has_value?('2')
#print numeros_romanos
if numeros_romanos.has_key?(n) == true
    puts numeros_romanos[n]
elsif 
end
