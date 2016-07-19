require_relative 'robot'
require_relative '../sources/diesel'

class Miner < Robot

  include Diesel

  def self.ability
    "Minero: Excavar"
  end

end
