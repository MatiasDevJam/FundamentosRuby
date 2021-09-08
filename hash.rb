# HASH

# Los hashes son un tipo de array de clave y valor
data = { "age" => 25, "name", => "raul" }

# pueden definirse de esta forma también
# utilizanddo los ":"
styles = { :font_size => 10, :font_family => "Roboto" }

# accedemos a su valor mediante su definición
data["age"]

styles[:font_size]

# podemos definir un hash mediante la clase Hash y el método new
browsers = Hash.new
# ahora le indicamos la clave y el valor que deseamos agregar
browsers["name"] = "Chrome"

# podemos pasarle un valor por defecto
browsers = Hash.new("default")
# también de esta forma
browsers.default = "Not Found"
