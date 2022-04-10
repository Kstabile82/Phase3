class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill
      t.integer :volunteer_id 
    end
  end
end
