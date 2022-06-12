numero = ARGV[0].to_i

puts "<ul>"
(numero+1).times do |i|
    puts "\t<li>#{i}</li>"
end
puts "</ul>"
