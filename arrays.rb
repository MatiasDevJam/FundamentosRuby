# ARRAYS

# definimos un array
# podemos definir varios tipos de datos primitivos dentro de un array
array = [1, "two", 4.0]

# esta es otra forma de definir un array
array = %w{a z s d a f}
array = %w{4 5 6 4 4 5}

# tambien podemos usar la clase "Array" y el método new
array = Array.new

# podemos predefinir el tamaño y los datos
Array.new(3)
Array.new(3, "hola")

# para la prueba de arrays es mejor ingresar al irb
# irb
# utilizamos la palabra "exit" para salir

# recuperamos elementos por su posición
array = [a, b, c, d, e]
array[2] # devuelve el valor "c"

# también recuperamos la cantidad de elementos que queremos recuperar
array = [a, b, c, d, e]
array[1, 3] # devuelve los valores "b, c, d"

# otra forma de recuperar desde un rango
array = [a, b, c, d, e]
array[1..3] # devuelve los valores "b, c, d"

# también recuperamos de atras hacia adelante, la última posición es -1
array = [a, b, c, d, e]
array[-2] # devuelve el valor "d"

# podemos recuperar valores con el método "at"
array = [a, b, c, d, e]
array.at(2) # devuelve el valor "c"

# utilizamos el método first para obtener el primer elemento
array.first

# utilizamos el método last para obtener el último elemento
array.last

# el método "take" recupera la cantidad de elementos que le pasemos como parametro
array.take(2)

# el método "drop" elimina la cantidad de elementos que le pasemos como parametro
array.drop(2)

# el metodo "length" nos devuelve la cantidad de elementos del array
browsers = ["Chrome", "Firefox", "Safari"]
browsers.length # devuelve 3 

# el metodo "count" también nos devuelve la cantidad de elementos del array
browsers = ["Chrome", "Firefox", "Safari"]
browsers.count # devuelve 3 

# podemos utilizar el método "empty"
browsers = ["Chrome", "Firefox", "Safari"]
browsers.empty? # devuelve false

# también podemos utilizar el método "include"
browsers = ["Chrome", "Firefox", "Safari"]
browsers.include?('Edge') # devuelve false

# agregamos elementos con el método "push"
browsers = ["Chrome", "Firefox", "Safari"]
browsers.push('Edge') 

# también podemos agregar elementos con asignaciones "<<"
browsers = ["Chrome", "Firefox", "Safari", "Edge"]
browsers << "IExplorer" 

# utilizamos el método "unshift"
browsers = ["Chrome", "Firefox", "Safari", "Edge", "IExplorer"]
browsers.unshift("Opera")

# con el método insert podemos agregar elementos 
# desde el indice que pasemos como argumento
browsers = ["Opera", "Chrome", "Firefox", "Safari", "Edge", "IExplorer"]
browsers.insert(2, "Brave", "Onion")

# el método "pop" elimina el último elemento
browsers = ["Opera", "Chrome", "Brave", "Onion", "Firefox", "Safari", "Edge", "IExplorer"]
browsers.pop

# el método "shift" eliminamos el primer elemento
browsers = ["Opera", "Chrome", "Brave", "Onion", "Firefox", "Safari", "Edge"]
browsers.shift

# el método "delete_at" borra el elemento que le pasemos como paramatro
browsers = ["Chrome", "Brave", "Onion", "Firefox", "Safari", "Edge"]
browsers.delete_at(1)

# podemos usar el método "delete" y pasarle como parametro el nombre del elemento
browsers = ["Chrome", "Onion", "Firefox", "Safari", "Edge"]
browsers.delete("Firefox")

# el método "unique" nos devuelve los elementos únicos del array
browsers = ["Chrome", "Chrome", "Onion", "Onion", "Firefox", "Safari", "Safari", "Safari"]
browsers.unique # devuelve ["Chrome", "Onion", "Firefox", "Safari"]