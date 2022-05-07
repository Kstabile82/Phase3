class RemoveVolunteerIdFromProjectVolunteers < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_volunteers, :volunteer_id, :integer

  end
end
