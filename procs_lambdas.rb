# PROCS

# es una clase que nos va permitir contener bloques
# estos bloques vamos a poder alamacenarlos dentro de una variable
def run_proc_with_random_number(proc)
    # llamamos al proc con le método "call"
    proc.call(rand(100))
end

# creamos un nuevo proc con "Proc"
proc = Proc.new { |number| puts "#{number}" }
run_proc_with_random_number(proc)

# también podemos realizarlo de esta manera pero es menos eficiente
# con el signo "&" le estamos diciendo a la función que va recibir un proc
def run_proc_with_random_number(&proc)
    proc.call(rand(100))
end

run_proc_with_random_number { |number| puts "#{number}" }

# LAMBDAS

# las lambdas son procs con algunos detalles distintivos
# una lambda impone el número de argumentos que va recibir
# cuando es llamada

def return_from_proc
    a = Proc.new { return 10 }.call
    puts 'This will never be printed'
end

def return_from_lambda
    # podemos crear una lambda utlizando la palabra "lambda"
    # o simplemente el signo "->"
    a = -> { return 10 }.call
    puts "The lambda returned #{a}"
end

puts return_from_proc
return_from_lambda
