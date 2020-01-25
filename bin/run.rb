require_relative '../config/environment'
require_relative '../lib/award'
require_relative '../lib/soldier'
require_relative '../lib/mission'
require 'tty-prompt'




def start
    prompt = TTY::Prompt.new
    puts "Please enter username:"
    user_name = gets.chomp
    password = prompt.mask("Please enter password:")
    user = Login.all.first
    if (user.username == user_name && user.password.to_s == password)
        run
    else
        puts "Please enter correct username and password"
        start
    end
end

    def run

        prompt = TTY::Prompt.new
        prompt.select("Welcome. What would you like to do?") do |menu|
            menu.choice "Add Soldier to Active Duty" do
                Soldier.add_a_soldier
                run
            end
            menu.choice "Remove Soldier from Active Duty" do
                Soldier.remove_soldier
                run
            end
            menu.choice "Show All Active Duty Soldiers" do
                Soldier.show_all_soldiers
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
            menu.choice "Show All Awards" do
                Award.show_all_awards
                run
            end
            menu.choice "Check Soldier's List of Awards" do
                Soldier.list_awards
                run
            end
            menu.choice "Create New Mission" do
                Mission.new_mission
                run
            end
            menu.choice "Remove Mission" do
                Mission.remove_mission
                run
            end
            menu.choice "Show All Missions" do
                Mission.show_all_missions
                run
            end
            menu.choice "Exit" do
                exit!
            end
        end
    end
        
start

