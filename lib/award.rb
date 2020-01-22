class Award < ActiveRecord::Base
    has_many :missions
    has_many :soldiers, through: :missions

    def self.say_hello
        puts 'vera'
    end 
end