# BLOQUES

# esta es la manera correcta de realizar un bloque de codigo
# en una sola línea

[1,2,3].each { |i| puts i }

# si el bloque de codigo es más extenso debemos
# usar el bloque "do" y "end"

[1,2,3].each do |i|
    if i % 2 == 0
        puts "#{i} is even"
    else
        puts "#{i} is odd"
    end
end

class PDFReporter
    def generate(title, month)
        puts "generando reporte #{title}" 
        # con la palabra "yield" podemos pasarle 
        # un bloque de codigo a la función
        # con el método "block_given" nos aseguramos
        # de que la función reciba un bloque
        if block_given?
            yield month
        end
    end
end

reporte = PDFReporter.new
# aca le pasamos un bloque de codigo a la función
reporte.generate('Mensual', 'Febrero') do |month|
    puts "Reporte de #{month}"
end