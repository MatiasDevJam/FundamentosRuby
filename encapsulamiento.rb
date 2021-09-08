# ENCAPSULAMIENTO

class Person
    def initialize(name:)
        set_name(name: name)
    end

    def username
        "#{@first_name} #{last_name}"
    end

    # con la palabra reservada "private" indicamos los métodos que 
    # que solo se pueden acceder de forma privada
    private

    # definimos un método para con una expresión regular
    # que nos permite separar nombre y apellido por espacio
    def set_name(name:)
        first_name, last_name = name.split(/\s+/)
        set_first_name(first_name)
        set_last_name(last_name)
    end


    def set_first_name(first_name)
        @first_name = first_name
    end

    def set_last_name(last_name)
        @last_name = last_name
    end
     
end


# este bloque lanza un error ya que no podemos acceder a ese método
# porque esta definido como "private"
raul = Person.new(name: 'Juan Moreira')
raul.set_last_name('Benitez')
puts raul.username

# METODOS PROTEGIDOS

# la regla de los metodos protegidos son que solo funcionan como un método público
# dentro de la misma clase, y por fuera de la clase se comportan como un método privado
 class Space
     def a_public_method
         "Work? #{a_protected_method}"
     end

     # con la palabra reservada "protected" indicamos
     # que los siguientes métodos van a ser protegidos
     def a_protected_method
         "Yes I'm protected"
     end
     
 end

 space = Space.new
 puts space.a_public_method