class AddProjToProjectAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :project_animals, :proj, :integer

  end
end
