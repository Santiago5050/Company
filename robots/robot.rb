class Robot

  @@constructed = 0
  @@released = 0
  @@selled = 0

  def initialize(name)
    @name = name
    @released = false
    @buyed = false
    @@constructed += 1
    @serial_number = Random.rand(9999)
  end

  def release!
    @release = true
    @@released += 1
  end

  def self.show_abilities
    puts self.ability
  end

  def buy!(person)
    @person = person
    if @release && !@buyed
      puts "El robot #{@name} fue comprado por #{@person.name}"
      @buyed = true
      @@selled += 1
    else
      puts "Hubo un error al intentar comprar el robot #{@name}"
    end
  end

  def show_distance(value)
    puts "Distancia que puedo recorrer: #{calculate_distance(value)} Km"
  end

  def self.show_report
    puts "Robots construidos al momento: #{@@constructed}"
    puts "Robots lanzados al momento: #{@@released}"
    puts "Robots vendidos al momento: #{@@selled}"
  end

  def show_info
    puts "\nNúmero de serie: #{@serial_number}"
    puts "Nombre del robot #{@name}"
    if @release
      if @buyed
        puts "Estado: Fue comprado por: #{@person.name}"
      else
        puts "Estado: Lanzado"
      end
    else
      puts "Estado: Construido"
    end

    unless @color.nil?
      puts "Color: #{@color}"
    else
      puts "Color: No aplica"
    end
  end

end
