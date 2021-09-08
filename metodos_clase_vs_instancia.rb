# MÉTODOS DE CLASE Y MÉTODOS DE INSTANCIA

class Space
    # con el método "self" estamos indicando que esta 
    # función pertenece a esta clase
    def self.test_method
        puts 'Hello from the space class'
    end

    # ahora generamos una función de instancia
    def test_method
        puts 'Hello from an instance of space class'
    end
    
end

# la diferencia es que con método de clase
# llamados directamente al método
Space.test_method

# en un método de instancia primero debemos intanciar
# un objeto de la clase
Space.new.test_method