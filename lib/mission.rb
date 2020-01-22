class Mission < ActiveRecord::Base
    belongs_to :award
    belongs_to :soldier

    # def self.verify_mission #who is assigned to this mission? also show mission details
    #     puts "Please enter name of mission"
    #     user_input = gets.chomp
    #     # do some validation -->This mission does not exist

    #     mission_found = (Mission.all.select do |mission|
    #                      mission.name == user_input
    #                         end)
        
    #     puts "#{mission_found} is assigned to #{user_input}, located at #{mission_found}"

    # end
end