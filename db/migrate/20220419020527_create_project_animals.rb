class CreateProjectAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :project_animals do |t|
      t.integer :animal_id
      t.integer :project_id
      t.timestamps
    end
  end
end
