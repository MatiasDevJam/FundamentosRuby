# CONDICIONALES

# asi trabaja el condicional if / else
is_autenticated = false

if is_autenticated 
    puts 'redirect to dashboard'
else
    puts 'redirect to login'
end

# esta es la sentencia Case (Swicth)
role = :user

case role
when :user
    puts 'Welcome user'
when :super_user
    puts 'Welcome Super user'
else
    puts 'Error: user unrecognized'
end

# sentencia a menos que "unless"
# para que ejecute el bloque de codigo la condición no debe cumplirse
# se puede interpolar variables usando #{var}
username = 'Juan'

unless username == 'Pepe'
    puts "Eres un gran piloto #{username}"
end
