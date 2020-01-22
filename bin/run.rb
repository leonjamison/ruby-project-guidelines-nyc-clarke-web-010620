require_relative '../config/environment'
require_relative '../lib/award'
require_relative '../lib/soldier'
require_relative '../lib/mission'

# puts "Welcome. What would you like to do?"
# user_input = gets.chomp



# "Check soldier's list of awards"
# def soldiers_awards
# puts "Please enter soldier's name"
# user_input = gets.chomp
# selected_soldier = Soldier.find_by(name: user_input)
# selected_soldier ? selected_soldier.list_awards : "This soldier does not exist"
# end

# puts soldiers_awards


# Mission.full_mission_details
Mission.create_mission


# Award.say_hello
Soldier.add_a_soldier
# Mission.verify_mission

# Soldier.remove_soldier


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
