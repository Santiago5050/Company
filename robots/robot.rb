class Robot

  @@constructed = 0
  @@released = 0
  @@selled = 0

  def initialize(name)
    @name = name
    @released = false
    @buyed = false
    @@constructed += 1
    @serial_number = Random.rand(000001..999999)
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
    puts "Nombre: #{@name}"
    show_status
    show_color
  end

  private

  def show_status
    puts "Estado: #{
      if @release
        if @buyed
          "Vendido a: #{@person.name} #{@person.lastname}"
        else
          "Released"
        end
      else
        "Construido"
      end
    }"
  end

  def show_color
    puts "Color: #{unless @color.nil?
      @color
    else
      "No aplica"
    end }"
  end
end
