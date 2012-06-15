class GMapsSchtuff < ActiveRecord::Migration
  def change
    add_column :friends, :latitude,  :float #you can change the name, see wiki
    add_column :friends, :longitude, :float #you can change the name, see wiki
    add_column :friends, :gmaps, :boolean #not mandatory, see wiki
  end
end
