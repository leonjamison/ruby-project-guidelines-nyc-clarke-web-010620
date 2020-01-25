class Mission < ActiveRecord::Base
    belongs_to :award
    belongs_to :soldier
    # validates :name

    # returns names of soldiers that have completed that mission
    def mission_roster
        soldiers_name_assigned_to_mission = self.soldier.name
        puts "The soldier that is assigned to this mission is #{soldiers_name_assigned_to_mission}."
    end

    # returns details of the mission passed through
    def mission_details 
        puts "The name of this mission is #{self.name}."
        puts "The location of this mission is #{self.location}."
        puts "The award for successfully completing this mission is #{self.award.name}."
        puts "----------------------------------------"
    end

    def self.full_mission_details #who is assigned to this mission? also show mission details
        puts "Please enter name of mission"
        user_input_mission_name = gets.chomp 
        selected_mission = Mission.find_by(name: user_input_mission_name)
       
        if selected_mission 
            selected_mission.mission_roster 
            selected_mission.mission_details      
        else
            puts "This mission does not exist."
            puts "----------------------------------------"
        end
    end

    # soldier.all.any?(name: soldiers_name)

    def self.get_soldier_name #takes input of a soldier name from user and checks to see if soldiers name is already in database
        puts "What is the soldier's name that will be assigned to this mission?"
        soldiers_name = gets.chomp
        # binding.pry
        if Soldier.find_by(name: soldiers_name) #check if soldiers name exists--> for later dev, if multiple same names...check by id next
            # binding.pry
            puts "Assigning soldier..."
            soldiers_name_object = Soldier.find_by(name: soldiers_name)
            soldiers_name_object
        else
            puts "Soldier not found, please enter an active duty soldier."
            puts "----------------------------------------"
            get_soldier_name
        end
    end

    def self.get_mission_name #takes input from user for a new mission name. If mission name is already taken, prompts user to give a new mission name.
        puts "Please create a name for this new mission"
        user_input_missionname = gets.chomp
        mission_name = Mission.find_by(name: user_input_missionname)
        # binding.pry
        if mission_name
            puts "Sorry, that mission name already exists"
            get_mission_name
        else
            puts "...Assigning mission_name: #{user_input_missionname}..."
            user_input_missionname
        end
    end

    def self.get_award_name
            #takes input from user for an award name. If the award name already exists in the system, asks user to enter a new award name
            puts "What is the name of the award that will be given after successfully completing this mission?"
            award_name = gets.chomp
            # binding.pry
            if Award.find_by(name: award_name)
                new_missions_award_name = Award.find_by(name: award_name)
                # binding.pry
            else
                puts "This award does not exist. Please enter a valid award."
                get_award_name
            end
                #does an if have to have an else stmt? how to use not
            # award_name.create_award #check if award exists, if not create new one
    end

    # "Creates a new mission"
    def self.new_mission

        #mission name
        new_mission_name = Mission.get_mission_name

        #location
        puts "What is the location for this mission?"
        user_location = gets.chomp

        #soldier name
        soldier_name = Mission.get_soldier_name

        # award 
        missions_award_name = Mission.get_award_name
    
        #create new mission
        new_mission = Mission.create(name: new_mission_name, location: user_location, award_id: missions_award_name.id, soldier_id: soldier_name.id) 
            sleep 1
            puts "Mission has been created."
            sleep 1
            puts "Mission name: #{new_mission_name}"
            sleep 1
            puts "Mission location: #{user_location}"
            sleep 1
            puts "Mission award: #{missions_award_name.name}"
            sleep 1
            puts "Soldier assigned to mission: #{soldier_name.name}"
            sleep 1
            puts "----------------------------------------"
            sleep 1
    end

    def self.remove_mission
        # binding.pry
            puts "Please enter the mission name you would like to remove."
            user_input = gets.chomp
            delete_mission = Mission.find_by(name: user_input)
            if delete_mission
                delete_mission.destroy 
                puts "Mission has been removed"
                puts "----------------------------------------"
            else
                puts "Mission not found, please enter a valid mission name."
                puts "----------------------------------------"
            end
    end

    def self.show_all_missions
        Mission.all.map do |mission|
            # binding.pry
            puts "Mission's name: #{mission.name}"
            puts "Mission's location:  #{mission.location}"
            puts "----------------------------------------"
        end
    end

end