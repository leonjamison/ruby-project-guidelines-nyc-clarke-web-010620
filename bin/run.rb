require_relative '../config/environment'
require_relative '../lib/award.rb'
require_relative '../lib/soldier'
require_relative '../lib/mission'

# puts "Welcome. What would you like to do?"
# user_input = gets.chomp



# "Check soldier's list of awards"
puts "Please enter soldier's name"
user_input = gets.chomp
selectedSoldier = Soldier.find_by(name: user_input)
puts selectedSoldier
binding.pry
# if selectedSoldier {
#     Soldier.list_awards(user_input)
# } else {

# }

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
