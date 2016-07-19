require_relative 'robot'
require_relative '../sources/battery'
require_relative '../sources/painteable'

class Flyer < Robot

  include Battery
  include Painteable

  def initialize(name)
    super(name)
    @color = paint
  end

  def self.ability
    "Volador: volar"
  end

end
