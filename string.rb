#STRING
#Las cadenas en Ruby pueden mutar a lo largo del programa

#comenzamos declarando el nombre de la variable y le asginamos un valor
string = "My first string"

#La palabra reservada "puts" imprime el valor en pantalla
#el metodo length no lleva parentesis ya no tiene ningun argumento
puts string.length

#el metodo "count" nos muestra la cantidad de caracteres que le pasamos como argumento
puts string.count('i')

#el metodo "slice" crea subcadenas comenzamos desde la posición 3 y nos trae los 
#siguientes5 caracteres
puts string.slice(3, 5)

#el método "upcase" convierte a mayusculas 
puts string.upcase

#con el signo ! creamos un metodo peligroso
#estos metodos sirven para mutar el valor inicial de un string
puts string.upcase!

#cuando volvemos a llamar a la variable su valor ha mutado
puts string

#el metodo "empty" devuelve un booleano
# el signo "?" es un convencion sintactica
puts string.empty?

#un metodo bien claro que devuelve un booleano, 
#le pasamos los caracteres como argumento entre comillas
puts string.include? 'MY'