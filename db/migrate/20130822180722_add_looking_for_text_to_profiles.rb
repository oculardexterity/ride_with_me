class AddLookingForTextToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :looking_for_text, :text
  end
end
