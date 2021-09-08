# TIME & DATE TIME

#La clase time de Ruby maneja todo lo relacionado a fechas

#con el metodo "now" obtenemos la fecha actual
time = Time.now

#obtenemos los segundos
puts time.sec

#obtenemos los minutos
puts time.min

#obtenemos la hora
puts time.hour

#obtenemos el día
puts time.day

#obtenemos el mes
puts time.month

#obtenemos el año
puts time.year

#obtenemos el día de la semana
puts time.wday

#obtenemos el día del año
puts time.yday

#preguntamos si esta vigente el horario de verano
puts time.isdst

#obtenemos la zona horaria
puts time.zone