class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :facebook_id
      t.string :name
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
