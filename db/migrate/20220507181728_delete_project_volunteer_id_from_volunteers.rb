class DeleteProjectVolunteerIdFromVolunteers < ActiveRecord::Migration[6.1]
  def change
    remove_column :volunteers, :project_volunteer_id, :integer

  end
end
