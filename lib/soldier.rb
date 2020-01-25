require 'pry'
class Soldier < ActiveRecord::Base

    has_many :missions
    has_many :awards, through: :missions 


    def self.soldier_rating(name, age, rank)
        puts "Please enter soldier's rating (between 1 and 5)"
        # binding.pry
        rating = gets.chomp.to_f
        # binding.pry
        if (1..5).include?(rating)
            
            add_a_sold_contd(name, age, rank, rating)
            # puts "works"
        else
            puts "Please enter a number between 1 and 5:"
            soldier_rating(name, age, rank)
        end
    end

    def self.add_a_soldier
        puts "Please enter soldier's name"
        name = gets.chomp
        puts "Please enter soldier's age"
        age = gets.chomp
        puts "Please enter soldier's rank"
        rank = gets.chomp
        
        soldier_rating(name, age, rank)
        # puts "Please enter soldier's rating (between 1 and 5)"
        # rating = gets.chomp
    end

    def self.add_a_sold_contd(name, age, rank, rating)
        if Soldier.find_by(name: name, age: age, rank: rank, rating: rating)
            puts "This soldier is already in the database."
            puts "----------------------------------------"
            sleep 1
        else
            Soldier.create(name: name, age: age, rank: rank, rating: rating)
            puts "Soldier has been added to the system."
            puts "----------------------------------------"
            sleep 1
        end
 
    end

    def self.list_awards
        puts "For which soldier's awards would you like to see?"
        soldiername_input = gets.chomp
        list_of_awards_input = Soldier.find_by(name: soldiername_input)
        if list_of_awards_input
            list_of_awards_input.awards.each do |award|
                award.name
                sleep 1
                puts award.name
                puts "----------------------------------------"
                sleep 1
            end
        else
            puts "No awards found!"
            puts "----------------------------------------"
            sleep 1
        end
    end

    def self.remove_soldier 
        puts "Please enter soldier's name that you would like to remove?"
        puts "----------------------------------------"
        sleep 1
        
        user_input_name = gets.chomp   #[Bill, 6]
        finding_soldier_to_delete = Soldier.find_by(name: user_input_name)
        # binding.pry
        Soldier.delete(finding_soldier_to_delete)
        sleep 1
        puts "Soldier has been removed from active duty."
        puts "----------------------------------------"
        sleep 1
    end



    # def self.remove_soldier 
    #     puts "Please enter soldier's name, and id (separated by commas) that you would like to remove?"
    #     puts "----------------------------------------"
    #     sleep 1
        
    #     user_input_name = gets.chomp.split(",").map(&:strip)    #[Bill, 6]
    #     name = user_input_name[0]
    #     id = user_input_name[1]
    #     finding_soldier_to_delete = Soldier.find_by(name: name, id: id)
    #     Soldier.delete(finding_soldier_to_delete)
    # end

    # def find_soldiers_id(name)
    #     soldier_object = Soldier.find_by(name: name)
    #     soldier_object.id
    # end

    def self.find_soldier_by_name
        puts "Please enter soldier's name you'd like to find"
        user_input = gets.chomp
        soldier = Soldier.find_by(name: user_input)
        puts "Soldier's name: #{soldier.name}"
        puts "Soldier's age:  #{soldier.age}"
        puts "Soldier's rank:  #{soldier.rank}"
        puts "Soldier's rating:  #{soldier.rating}"
    end

    def self.show_all_soldiers
        Soldier.all.map do |soldier|
            puts "Soldier's name: #{soldier.name}"
            puts "Soldier's age:  #{soldier.age}"
            puts "Soldier's rank:  #{soldier.rank}"
            puts "Soldier's rating:  #{soldier.rating}"
            puts "----------------------------------------"
        end
    end

    def self.show_all_active_duty_soldier_with_this_rank(user_rank)
        # Soldier.find_by(rank: user_rank)
        Soldier.all.select do |soldier|
            user_rank == soldier.rank
        end
    end


end
 

# "Add a soldier"
# "Verify mission"
# "Check soldier's awards"
# "Remove soldier from active status"
# "Create a new mission"