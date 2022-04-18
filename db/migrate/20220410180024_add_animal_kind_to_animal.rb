class AddAnimalKindToAnimal < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :kind, :string
  end
end
