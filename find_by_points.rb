@file_path= "lista.txt"


def find_by_points(points)
  cant = points.to_i
  nombre=''
  puntos=''
  aporte=''
  band=false

  File.foreach(@file_path){}
  tamaño = $. # con esto a tamaño se le asigna el numero de lineas del archivo
  if tamaño ==0
    puts "File is empty genius"
  else
    File.foreach(@file_path) do |line|
      nombre, puntos, aporte = line.split(';')
      if puntos.to_i == cant
        puts "#{nombre},#{puntos},#{aporte}"
        band = true
      end

    end
    puts 'Estudiante no encontrado' if band == false
  end

end
p = 0
find_by_points(6)