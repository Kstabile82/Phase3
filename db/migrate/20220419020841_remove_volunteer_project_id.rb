class RemoveVolunteerProjectId < ActiveRecord::Migration[6.1]
  def change
    remove_column :volunteers, :project_id, :integer

  end
end
