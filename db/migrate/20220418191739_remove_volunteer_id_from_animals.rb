class RemoveVolunteerIdFromAnimals < ActiveRecord::Migration[6.1]
  def change
    remove_column :animals, :volunteer_id, :integer

  end
end
