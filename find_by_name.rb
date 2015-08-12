@file_path= "lista.txt"


def find_by_name(name)
  student = name
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
      if (student.casecmp nombre) == 0   #comparacion de contenido con o sin mayusculas
        puts "#{nombre},#{puntos},#{aporte}"
        band = true
      end

    end
    puts 'Estudiante no encontrado' if band == false
  end

end
name = 'jonathan'
find_by_name(name)


#"Apples".casecmp "apples" ----> ejemplo de comparacion con o sin mayusculas (case sensitive)