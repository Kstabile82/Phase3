class RemoveVolunteerSkills < ActiveRecord::Migration[6.1]
  def change
    drop_table :volunteer_skills 

  end
end
