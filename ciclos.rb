# CICLOS

# asi trabaja el ciclo while
number = 1
while number < 10
    puts number
    number += 1
end

# el método "times" se va ejecutar las veces que le asignemos
100.times do |i|
    puts i
end

# se puede declarar el código anterior en una sola línea
100.times { |i| puts i }

# el método "each" nos permite iterar un rango
(10..15).each do |i|
    puts i
end

# con "each" podemos iterar los hashes
data = { :name => 'Maria Galarza', :age => 24 }

data.each do |key, value|
    puts "#{key}: #{value}"
end