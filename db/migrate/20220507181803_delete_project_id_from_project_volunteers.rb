class DeleteProjectIdFromProjectVolunteers < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_volunteers, :project_id, :integer

  end
end
