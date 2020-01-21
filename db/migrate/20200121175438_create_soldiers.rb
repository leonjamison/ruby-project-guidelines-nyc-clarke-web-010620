class CreateSoldiers < ActiveRecord::Migration[5.0]
  def change
    create_table :soldiers do |t|
      t.string :name
      t.integer :age
      t.string :rank
      t.float :rating
    end
  end
end
