class RemoveProjFromProjectAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :project_animals, :proj, :integer

  end
end
