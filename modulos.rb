#MODULOS

# con la palabra reservada "require" importamos el modulo 
# que deseamos utilizar

require './modulos/number'
require './modulos/string'

puts NumberModule.random
puts StringModule.random

# MIX - IN

# podemos importar modulos y acceder a sus métodos

module UsefulFeatures
    def class_name
        self.class.to_s
    end
end

module AnotherModule
    def do_stuff
        'This is a test'
    end
    
end

# con la palabra reserada "include" llamamos al modulo que deseamos utilizar 
class Person
    include UsefulFeatures
    include AnotherModule
end

x = Person.new
puts x.class_name
puts x.do_stuff
