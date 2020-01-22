class Mission < ActiveRecord::Base
    belongs_to :award
    belongs_to :soldier

    # returns names of person that has done that mission
    def mission_roster
        self.soldier_id.name
    end

    # returns details of the mission passed through
    def mission_details 
        puts "The name of this mission is #{self.name}."
        puts "The location of this mission is #{self.location}."
        puts "The award for successfully completing this mission is #{self.award_id.name}."
    end

    def full_mission_details #who is assigned to this mission? also show mission details
        puts "Please enter name of mission"
        user_input = gets.chomp
        selected_mission = Mission.find_by(user_input)
        selected_mission ? selected_mission.mission_roster && selected_mission.mission_details : "This mission does not exist."
     
    end
    #     puts "#{mission_found} is assigned to #{user_input}, located at #{mission_found}"

end