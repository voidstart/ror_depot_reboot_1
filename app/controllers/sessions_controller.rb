class SessionsController < ApplicationController
  skip_before_filter :check_login
  
  def new
  end

  def create
  	un = params[:username]
  	user = User.find_by_username(un)
  	pswd = params[:password]
  	if user and user.authenticate(pswd)
  		session[:user_id] = user.id
  		redirect_to admin_url, alert: "Login Successful"
  	else
  		redirect_to admin_url, alert: "Invalid Username/Password combination: #{un}"
  	end
  end

  def destory
    session[:user_id] = nil
    redirect_to store_url, alert: "Successful logout"
  end
end
