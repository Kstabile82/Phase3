class AddRescueIdToVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :volunteers, :rescue_id, :integer

  end
end
