require_relative 'robots/flyer'
require_relative 'robots/humanoid'
require_relative 'robots/miner'
require_relative 'person'

# Builds different robots
puts "Construyendo los robots...\n\n"
flyer_robot_1 = Flyer.new('Flyer Robot One')
humanoid_robot_1 = Humanoid.new('Humanoid Robot One')
miner_robot_1 = Miner.new('Miner Robot One')

flyer_robot_2 = Flyer.new('Flyer Robot Two') # robot not released

# release them, now they are able to sell
puts "Lanzando los robots...\n\n"
flyer_robot_1.release!
humanoid_robot_1.release!
miner_robot_1.release!

# People buy some of them
person_1 = Person.new('John', 'Doe')
person_2 = Person.new('Rachel', 'Adams')

puts "\n\nComprando robots..."
flyer_robot_1.buy!(person_1)
humanoid_robot_1.buy!(person_2)
flyer_robot_2.buy!(person_1)

puts "\n\nMostrando info de los robots..."
flyer_robot_1.show_info
puts '---'
humanoid_robot_1.show_info
puts '---'
miner_robot_1.show_info
puts '---'
flyer_robot_2.show_info
puts '---'
