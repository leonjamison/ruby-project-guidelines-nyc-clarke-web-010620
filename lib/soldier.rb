require 'pry'
class Soldier < ActiveRecord::Base

    has_many :missions
    has_many :awards, through: :missions 


    def self.add_a_soldier
        puts "Please enter soldier's name"
        name = gets.chomp
        puts "Please enter soldier's age"
        age = gets.chomp
        puts "Please enter soldier's rank"
        rank = gets.chomp
        puts "Please enter soldier's rating"
        rating = gets.chomp

        if Soldier.find_by(name: name, age: age, rank: rank, rating: rating)
            puts "This soldier is already in the database."
        else
            Soldier.new(name: name, age: age, rank: rank, rating: rating)
            puts "Soldier has been added to the system."
        end
 
    end

    def self.list_awards
        puts "For which soldier awards would you like to see?"
        soldiername_input = gets.chomp
        list_of_awards_input = Soldier.find_by(name: soldiername_input)
        if list_of_awards_input
            list_of_awards_input.awards.each do |award|
                award.name
                puts award.name
            end
        else
            puts "No awards found!"
        end
    end

    def self.remove_soldier 
        puts "Please enter soldier's name, and id (separated by commas) that you would like to remove?"
        
        user_input_name = gets.chomp.split(", ")    #[Bill, 6] # come back and fix this to where if no space is placed in between comma it will still be 2 strings
        # binding.pry
        name = user_input_name[0]
        id = user_input_name[1]
        finding_soldier_to_delete = Soldier.find_by(name: name, id: id)
        Soldier.delete(finding_soldier_to_delete)
        binding.pry
    end


end
 

# "Add a soldier"
# "Verify mission"
# "Check soldier's awards"
# "Remove soldier from active status"
# "Create a new mission"