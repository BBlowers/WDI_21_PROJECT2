class AddMainImageIdToVersions < ActiveRecord::Migration[5.0]
  def change
    add_column :versions, :main_image_id, :integer
  end
end
