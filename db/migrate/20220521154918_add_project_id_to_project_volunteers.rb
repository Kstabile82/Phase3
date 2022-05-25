class AddProjectIdToProjectVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :project_volunteers, :project_id, :integer

  end
end
