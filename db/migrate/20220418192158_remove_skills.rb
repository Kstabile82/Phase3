class RemoveSkills < ActiveRecord::Migration[6.1]
  def change
    drop_table :skills 
  end
end