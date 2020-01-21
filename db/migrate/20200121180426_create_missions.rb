class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.string :location
      t.string :award
      t.string :soldier
    end
  end
end
