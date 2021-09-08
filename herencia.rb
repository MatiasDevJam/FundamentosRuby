# HERENCIA

# creamos una clase padre del tipo Warrior

class Warrior
    attr_accessor :name, :ki

    def initialize(name:, ki:)
        @name = name
        @ki = ki
    end

    def make_technique(technique:)
        "Making #{technique}"
    end
end
# definimos una clase hija Sayayin que hereda de la clase padre Warrior

class Sayayin < Warrior
    attr_accessor :phase

    # con **options logramos heredar todos los atributos
    # de la clase padre Warrior
    def initialize(phase:, **options)
        super(**options)
        @phase = phase
    end

    def tranfor_to(phase:, ki:)
        @ki = ki
        @phase = phase
        "Transforming to #{phase}"
    end
end

# creamos un objeto del tipo Sayayin

vegeta = Sayayin.new(
    phase: "base",
    name: "Vegeta",
    ki: 3000
)

# aca podemos comprobar que una clase hija puede acceder
# a los atributos y métodos de un clase padre

puts vegeta.make_technique(technique: 'Final Flash')
puts vegeta.phase
puts vegeta.ki
puts vegeta.tranfor_to(phase: 'Ozaru', ki: 300000)
puts vegeta.phase
puts vegeta.ki