require 'open-uri'

class AuthController < ApplicationController
  def facebook
    code = params[:code]
    
    uri =  "https://graph.facebook.com/oauth/access_token?client_id=249187265194708&redirect_uri=http://localhost:3000/auth/facebook&client_secret=9a7277bdb4b1ff0ad232eadd806e5011&code=#{code}"
    response = open(uri).read
    
    access_token = response.split('&').first.split('=').last
    
    user = User.find(session[:user_id])
    
    uri = "https://graph.facebook.com/me?access_token=#{access_token}"
    
    response = JSON.parse(open(uri).read)
    
    user.facebook_id = response["id"]
    user.name = response["name"]
    user.location = response["location"]["name"]
    user.facebook_access_token = access_token
    
    user.save
    
    redirect_to user
  end
end
