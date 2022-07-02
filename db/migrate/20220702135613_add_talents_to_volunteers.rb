class AddTalentsToVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :volunteers, :talent, :string

  end
end
