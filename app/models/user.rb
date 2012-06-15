class User < ActiveRecord::Base
  attr_accessible :email, :facebook_access_token, :facebook_id, :location, :name, :password, :password_confirmation
  
  has_secure_password
  validates_uniqueness_of :email
end
