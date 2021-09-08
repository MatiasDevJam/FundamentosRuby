# VARIABLES

# variables locales

def basic_method
    puts x
end

x = 10
basic_method

# este codigo lanza un error debido a que la variable "x"
# tiene un alcanze local

# variables globales pero no son tan comunes debido 
# a que no encajan en la POO

def basic_method
    puts $x
end

$x = 10
basic_method

# las definimos anteponiendo el signo "$" en la variable

# variables de instancia o variables de objeto
# solo tienen alcanze dentro del objeto actual
# definimos la variable anteponiendo el signo "@"

class Car
    def initialize(brand:)
        @brand = brand
    end

    def start
       puts "#{brand} Starting"
    end
end

vw = Car.new("Volkwagen")
vw.start


# variables de clase
# definimos una variable de clase anteponiendo el sigo "@@"

class Car
    def initialize(brand:)
        @brand = brand

        # preguntamos si la variable existe
        # en caso de que exista le asginamos un valor
        # en caso contrario le asignamos un valor por defecto
        if defined?(@@numbers_of_cars)
            @@numbers_of_cars += 1
        else
            @@numbers_of_cars = 1
        end
    end

    def start
       puts "#{brand} Starting"
    end

    # retornamos la cantidad con el método de clase self.count
    def self.count
        @@numbers_of_cars
    end
end

vw = Car.new(brand: 'Volkwagen')
mercedez = Car.new(brand: 'Mercedez Benz')
puts Car.count

