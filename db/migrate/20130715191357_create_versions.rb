class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.text :content
      t.integer :story_id

      t.timestamps
    end
  end
end
