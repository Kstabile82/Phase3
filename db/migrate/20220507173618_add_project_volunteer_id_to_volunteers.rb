class AddProjectVolunteerIdToVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :volunteers, :project_volunteer_id, :integer
  end
end
