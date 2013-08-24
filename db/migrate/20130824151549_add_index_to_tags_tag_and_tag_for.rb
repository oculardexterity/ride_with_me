class AddIndexToTagsTagAndTagFor < ActiveRecord::Migration
  def change
  	add_index :tags, :tag
  	add_index :tags, :tag_for
  end
end
