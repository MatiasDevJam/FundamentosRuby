# CLASES

# definimos una clase
# para definir un constructor usamos la palabra "initialize"
# para definir una variable de instancia usamos "@"

class Person

    def initialize(name:, age:)
        @name = name
        @age = age
    end

    #definimos un getter
    def name
        @name
    end

    #definimos un setter
    def name=(name)
        @name = name
    end

    # para definir una función usamos la palabra "def"
    def greet
        "Hola, soy #{@name}"
    end
end

# creamos un objeto del tipo Person

persona = Person.new(name: 'Raul', age: 25)
puts persona.name
puts persona.greet

# podemos definir getter y setter de manera automatica

class Person2
    #esta macro define los getter y setter
    attr_accessor :name, :age

    def initialize(name:, age:)
        @name = name
        @age = age
    end

    # para definir una función usamos la palabra "def"
    def greet
        "Hola, soy #{@name}"
    end
end


persona = Person2.new(name: 'Raul', age: 25)
puts persona.age
puts persona.name
puts persona.greet

# podemos crear una clase Struct para definir varios atributos
# usando métodos de acceso sin escribir una clase explicita

# podemos definir getter y setter de manera automatica

Person3 = Struct.new(:name, :age) do
    def greet
        "Hola, soy #{name}"
    end
end

persona = Person3.new('Raul', 25)
puts persona.age
puts persona.name
puts persona.greet
