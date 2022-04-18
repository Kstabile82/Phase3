class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :breed
      t.string :name
      t.boolean :adoption_status
      t.integer :project_id
      t.integer :volunteer_id
      t.integer :age
      t.string :color 
      t.string :sex
      t.timestamps
    end
  end
end
