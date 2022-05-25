class RemoveProjVolunteerIdFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :project_volunteer_id, :integer

  end
end
