class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :statement
      t.date :date_of_birth
      t.string :sex
      t.string :looking_for_sex

      t.timestamps
    end
  end
end