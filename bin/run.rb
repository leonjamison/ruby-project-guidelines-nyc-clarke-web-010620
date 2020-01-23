require_relative '../config/environment'
require_relative '../lib/award'
require_relative '../lib/soldier'
require_relative '../lib/mission'
require 'tty-prompt'


def start
    # prompt = TTY::Prompt.new
    puts "Please enter username:"
    user_name = gets.chomp
    # prompt.mask("Please enter password:")
    puts "Please enter password:"
    password = gets.chomp.to_i

    user = Login.all.first
    # binding.pry
    if (user.username == user_name && user.password == password)
        run
    else
        puts "Please enter correct username and password"
        start
    end
end

    def run

        # login_method

        prompt = TTY::Prompt.new
        # system('clear')
        prompt.select("Welcome. What would you like to do?") do |menu|

            menu.choice "Delete Soldier" do
                Soldier.remove_soldier
                run
            end
            menu.choice "Create New Award" do
                Award.create_award
                run
            end
            menu.choice "Delete Award" do
                Award.remove_award
                run
            end
            menu.choice "Check Soldier's List of Awards" do
                Soldier.list_award
                run
            end
            menu.choice "Create New Mission" do
                Mission.new_mission
                run
            end
            menu.choice "Delete Mission" do
                Mission.remove_mission
                run
            end
            menu.choice "Add Soldier" do
                Soldier.add_a_soldier
                run
            end
            menu.choice "Exit" do
                exit!
            end
        end
    end
        
start

# prompt = TTY::Prompt.new
# prompt.mask("Please enter password to access system", required: true)
        

    # prompt.choice "Verify Soldier"
    # prompt.choice "Verify Award"
    # prompt.choice "Mission Roster"
    # prompt.choice "Verify Standard Mission Details"
    # prompt.choice "Verify Full Mission Details"
    # prompt.choice "Verify Mission Name"

