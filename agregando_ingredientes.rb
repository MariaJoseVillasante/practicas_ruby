ingredientes_pizza =["Pepperoni","Jamon","Queso","Aceitunas","Champiñones"]
print "Que ingredientes gustas para tu pizza: "
ingredienteBuscar=gets.chomp.capitalize
if ingredientes_pizza.include?(ingredienteBuscar) == true
    puts "El ingrediente ya existe agregado a tu pizza"
else
    ingredientes_pizza.push(ingredienteBuscar.capitalize)
    puts "Ingrediente agregado a lista"
end 
print ingredientes_pizza
