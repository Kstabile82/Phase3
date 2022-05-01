class RemoveRescueIdFromVolunteers < ActiveRecord::Migration[6.1]
  def change
    remove_column :volunteers, :rescue_id, :integer

  end
end
