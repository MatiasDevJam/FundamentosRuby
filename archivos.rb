# ARCHIVOS

# vamos a escribir un hash en el archivo
data = { :name =>  'Juana la Cubana', :age => 25, :position => 'Full Stack Enginner' }

# Con la clase File y el método open
# le pasamos como parametros el nombre del archivo
# y la acción de escribir el archivo
File.open('data.txt', 'w') do |file|
    data.each{ |key, value|
        file.write("#{key}: #{value} \n")
    }
end

# podemos leer el archivo
File.open('data.txt') do |file|
    puts file.read
end
