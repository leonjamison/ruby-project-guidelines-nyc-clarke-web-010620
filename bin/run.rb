require_relative '../config/environment'
require_relative '../lib/award.rb'
require_relative '../lib/soldier.rb'
require_relative '../lib/mission.rb'

# puts "Welcome. What would you like to do?"
# user_input = gets.chomp



# "Check soldier's list of awards"
<<<<<<< HEAD
puts "Please enter soldier's name"
user_input = gets.chomp
selectedSoldier.awards.map do |award|
    award.name
end 

# selectedSoldier = Soldier.find_by(name: user_input)
# puts selectedSoldier
binding.pry
# if selectedSoldier {
#     Soldier.list_awards(user_input)
# } else {

# }
=======
# def soldiers_awards
# puts "Please enter soldier's name"
# user_input = gets.chomp
# selected_soldier = Soldier.find_by(name: user_input)
# selected_soldier ? selected_soldier.list_awards : "This soldier does not exist"
# end

# puts soldiers_awards



Mission.full_mission_details

>>>>>>> b02e6045d0b90daf05cb78f20a5f00d370040743

# Award.say_hello
# Soldier.add_a_soldier
# Mission.verify_mission




# require 'tty-prompt'

# system("clear")

# user_input = prompt.ask("Welcome! What would you like to do?")
# puts A
# user_input = gets.chomp

# "Add a soldier"
# "Verify mission"
# "Check soldier's list of awards"
# "Remove soldier from active status"
# "Create a new mission"
