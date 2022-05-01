class RemoveAnimalProjectId < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :project_id, :integer

  end
end
