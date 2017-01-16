CONSTANTE = 2

class Triangulo
  def calcular_area()
    puts "Cual es la altura del triangulo?"
    STDOUT.flush
    altura = gets.chomp
    altura = altura.delete(',').to_i

    puts "Cual es la base del triangulo?"
    STDOUT.flush
    base = gets.chomp
    base = base.delete(',').to_i

    area = (base * altura) / CONSTANTE
    puts "El area es: #{area}"
  end
end

# x = Triangulo.new
# x.calcular_area

class Cuadrado
  def calcular_area()
    puts "Cual es la medida de un lado del cuaddrado?"
    STDOUT.flush
    lado = gets.chomp
    lado = lado.delete(',').to_i

    area = lado * lado
    puts "El area es: #{area}"
  end
end

# y = Cuadrado.new
# y.calcular_area

class Circulo
  def calcular_area()
    puts "Cual es el radio del circulo?"
    STDOUT.flush
    radio = gets.chomp
    radio = radio.delete(',').to_i

    area = 3.1416 * (radio * radio)
    puts "El area es: #{area}"
  end
end

z = Circulo.new
z.calcular_area
