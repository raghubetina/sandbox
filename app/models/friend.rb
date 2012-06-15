class Friend < ActiveRecord::Base
  attr_accessible :facebook_id, :location, :name, :user_id
  
  acts_as_gmappable

  def gmaps4rails_address
    self.location
  end
  
  def gmaps4rails_infowindow
        # add here whatever html content you desire, it will be displayed when users clicks on the marker
        
    "<img src='https://graph.facebook.com/#{self.facebook_id}/picture'/> #{self.name}"
  end
end
