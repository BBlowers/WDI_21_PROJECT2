class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.string :title
      t.text :content
      t.boolean :is_current
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
