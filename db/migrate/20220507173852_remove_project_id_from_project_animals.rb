class RemoveProjectIdFromProjectAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_animals, :project_id, :integer

  end
end
