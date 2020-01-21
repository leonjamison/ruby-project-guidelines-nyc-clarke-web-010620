class CreateEditMissionsSchema < ActiveRecord::Migration[5.0]
  def change
    remove_column :missions, :award, :string
    add_column :missions, :award_id, :integer
    remove_column :missions, :soldier, :string
    add_column :missions, :soldier_id, :integer
  end
end
