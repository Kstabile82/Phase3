class AddProjectIdToVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :volunteers, :project_id, :integer

  end
end
