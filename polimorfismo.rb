# POLIMORFISMO

class Animal
    attr_accessor :name
    def initialize(name)
      @name = name
    end
end

class Cat < Animal
    def talk
        'Meaow!'
    end
end

class Dog < Animal
    def talk
        'Wook'
    end
end

doggy = Dog.new('Doggy')
kitty = Cat.new('Kitty')

puts doggy.talk
puts kitty.talk

# la dos clases extienden de la misma clase padre
# implementan los mismos métodos, pero obtiene dieferentes datos
