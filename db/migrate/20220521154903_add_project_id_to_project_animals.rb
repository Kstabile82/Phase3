class AddProjectIdToProjectAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :project_animals, :project_id, :integer

  end
end
