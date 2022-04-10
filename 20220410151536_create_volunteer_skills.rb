class CreateVolunteerSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :volunteer_skills do |t|
      t.integer :volunteer_id 
      t.integer :skill_id
    end
  end
end
