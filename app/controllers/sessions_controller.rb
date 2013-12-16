class SessionsController < ApplicationController
  def new
  end

  def create
  	un = params[:name]
  	user = User.find_by_username(un)
  	pswd = params[:password]
  	if user and user.authenticate(pswd)?
  		sessions[:user_id] = user.id
  		redirect_to admin_url
  	else
  		redirect_to admin_url, notice "Invalid Username/Password combination"
  	end
  end

  def destory
  end
end
