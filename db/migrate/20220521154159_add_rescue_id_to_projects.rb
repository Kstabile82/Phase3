class AddRescueIdToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :rescue_id, :integer

  end
end
