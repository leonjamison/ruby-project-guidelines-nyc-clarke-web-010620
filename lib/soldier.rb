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
        
        new_soldier = Soldier.new(name: name, age: age, rank: rank, rating: rating)
        if new_soldier == Soldier.find_by(name: name, age: age, rank: rank, rating: rating)
            puts "Soldier Already Exist" 
        else
            new_soldier.save
            puts "Soldier has been created."
        end 
        # puts new_soldier
    end

    def list_awards
        self.awards.map do |award|
            award.name
        end
        # binding.pry
        # soldiers_awards = (Award.all.map do |award|
        #     award.name == 
        # end)
            # puts soldiers_awards
   
    end

    def self.remove_soldier 
    # binding.pry
        puts "Please enter soldiers name you will like to remove?"
        user_input = gets.chomp 
        delete_soldier = Soldier.find_by(name: user_input)
        delete_soldier ? delete_soldier.destroy : "Soldier not found, please try again."
    end

    
    # "Check soldier's award status"
    # def self.award_status  #put in soldiers name and list their awards
    #     puts "Please enter the soldier's name whose awards you'd like to see"
    #     user_input = gets.chomp
    #     # validation --> does this award exist
    #     name_from_user_exists? = Soldier.all.select do |award|
    #         soldier.name == user_input

    #         soldier object
    #         if soldier object id is in 
    #             Mission.all.select do |mission|
    #                 mission.soldier_id == name_from_user_exists?.id
    #                 mission.award_id.

    # end

end
 

# "Add a soldier"
# "Verify mission"
# "Check soldier's awards"
# "Remove soldier from active status"
# "Create a new mission"