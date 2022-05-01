class CreateProjectVolunteers < ActiveRecord::Migration[6.1]
  def change
    create_table :project_volunteers do |t|
      t.integer :volunteer_id
      t.integer :project_id
      t.timestamps
    end
  end
end
