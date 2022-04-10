class AddProjTypeToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :proj_type, :string

  end
end
