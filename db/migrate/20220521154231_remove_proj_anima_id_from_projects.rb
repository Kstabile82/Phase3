class RemoveProjAnimaIdFromProjects < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :project_animal_id, :integer

  end
end
