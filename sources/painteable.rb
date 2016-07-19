module Painteable

  def paint
    number = Random.rand(3)
    case number
    when 0
      "Azul"
    when 1
      "Rojo"
    when 2
      "Verde"
    end      
  end

end
