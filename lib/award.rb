
class Award < ActiveRecord::Base
    has_many :missions
    has_many :soldiers, through: :missions

    def self.create_award
        puts "Please provide a name for this award."
        puts "----------------------------------------"
        
        award_name = gets.chomp
        puts "For what location is this award designated?"
        puts "----------------------------------------"
        
        award_location = gets.chomp
        new_award = Award.create(name: award_name, location: award_location)
        if new_award == Award.find_by(name: award_name, location: award_location)
            puts "Award Rejected"
            puts "----------------------------------------"
            sleep 1
        else
            new_award.save
            puts "Award Created Succesfully"
            puts "----------------------------------------"
            sleep 1
        end
    end

    def self.remove_award
        # binding.pry
            puts "Please enter award name you will like to remove."
            user_input = gets.chomp
            delete_award = Award.find_by(name: user_input)
            delete_award ? delete_award.destroy : "Award not found, please enter a valid award."
            puts "----------------------------------------"
            sleep 1
    end

    def self.show_all_awards
        Award.all.map do |award|
            puts "Award's name: #{award.name}"
            puts "Award's location:  #{award.location}"
            puts "----------------------------------------"
        end
    end
end





