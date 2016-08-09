class AddCurrentVersionIdToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :current_version_id, :integer
  end
end