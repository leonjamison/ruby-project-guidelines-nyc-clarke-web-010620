class Mission < ActiveRecord::Base
    belongs_to :award
    belongs_to :soldier

    # returns names of person that has done that mission
    def mission_roster
        soldiers_name_assigned_to_mission = self.soldier.name
        puts "The soldier that is assigned to this mission is #{soldiers_name_assigned_to_mission}." #look at this later...do i need #{?, soldiers_id_assigned_to_mission}?,
    end

    # returns details of the mission passed through
    def mission_details 
        puts "The name of this mission is #{self.name}."
        puts "The location of this mission is #{self.location}."
        puts "The award for successfully completing this mission is #{self.award.name}."
    end

    def self.full_mission_details #who is assigned to this mission? also show mission details
        puts "Please enter name of mission"
        user_input = gets.chomp 
        selected_mission = Mission.find_by(name: user_input)
       
        if selected_mission 
            selected_mission.mission_roster 
            selected_mission.mission_details      
        else
            puts "This mission does not exist."
        end
    end

    def check_if_mission_name_exists     
    end

    # "Create a new mission"
    def self.create_mission
        puts "Please create a name for this new mission"
        user_input = gets.chomp
        mission_name = Mission.find_by(name: user_input)
        # binding.pry
        if mission_name
            # puts "Great mission name"
            puts "Sorry, that mission name already exists"
        else
            puts "What is the location for this mission?"
            user_location = gets.chomp
            puts "What is the soldier's name that will be assigned to this mission?"
            soldiers_name = gets.chomp
            #check if soldiers name exists--> if not, create new soldier
            "What is the "
            new_mission = Mission.new(name: user_input, location: user_location) 
            puts new_mission
            binding.pry
            puts "Mission has been created."
            puts "Mission name: #{new_mission.name}"
            puts "Mission location: #{new_mission.location}"
            puts "Mission : #{new_mission}"

        end
    end
end