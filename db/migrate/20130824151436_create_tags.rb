class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.string :tag_for

      t.timestamps
    end
  end
end
