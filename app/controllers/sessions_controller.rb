class SessionsController < ApplicationController

	def create
	  session[:password] = params[:password]
	  flash[:notice] = 'logged in'
	  render 'new'
	  #redirect_to login_path
	end
	
	def destroy
	  reset_session
	  flash[:notice] = 'logged out'
	  #redirect_to login_path
	end


end