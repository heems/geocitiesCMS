class SessionsController < ApplicationController
	def new
	end

	def create
	  session[:password] = params[:password]
	  if admin?
	  	flash[:notice] = 'You have logged in'
	  	redirect_to root_path
	  else
	  	flash[:notice] = 'Incorrect password'
	  	redirect_to login_path
	  end
	  
	end
	
	def destroy
	  reset_session
	  flash[:notice] = 'You have logged out'
	  redirect_to root_path
	end


end