class AuthController < ApplicationController
  def facebook
    @code = params[:code]
  end
end
