class AddFoodLikesToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :food_likes, :string, array: true, default: '{}'
  end
end
