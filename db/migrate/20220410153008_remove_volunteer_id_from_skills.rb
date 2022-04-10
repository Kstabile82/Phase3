class RemoveVolunteerIdFromSkills < ActiveRecord::Migration[6.1]
  def change
    remove_column :skills, :volunteer_id, :integer
  end
end
