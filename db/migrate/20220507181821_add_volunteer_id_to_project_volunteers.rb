class AddVolunteerIdToProjectVolunteers < ActiveRecord::Migration[6.1]
  def change
    add_column :project_volunteers, :volunteer_id, :integer

  end
end
