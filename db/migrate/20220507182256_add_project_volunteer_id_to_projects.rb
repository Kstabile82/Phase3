class AddProjectVolunteerIdToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :project_volunteer_id, :integer

  end
end
