@file_path= "lista.txt"


def find_by_id(id)
  nombre=""
  puntos=""
  aporte=''
  cont=0

  File.foreach(@file_path){}
  tamaño = $. # con esto a tamaño se le asigna el numero de lineas del archivo
  if tamaño ==0
    puts "File is empty genius"
  elsif id > tamaño
    puts "El id no es valido "
  else
    File.foreach(@file_path) do |line|
      if cont==id
        nombre, puntos, aporte = line.split(';')
      end
      cont+=1
    end
    puts "#{nombre},#{puntos},#{aporte}"
  end
end

find_by_id(2)


