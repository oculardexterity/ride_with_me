class AddIndexToProfileFoodLikes < ActiveRecord::Migration
  def change
  	add_index :profiles, :food_likes, using: 'gin'
  end
end
