class Mission < ActiveRecord::Base
    belongs_to :award
    belongs_to :soldier
end