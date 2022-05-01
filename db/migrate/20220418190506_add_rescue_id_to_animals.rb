class AddRescueIdToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :rescue_id, :integer
  end
end
