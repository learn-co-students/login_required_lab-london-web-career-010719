class SessionsController < ApplicationController#

  def new
      # nothing to do here!
  end

  def create
      session[:name] = params[:name]
      if session[:name] == nil || session[:name] == ""
        redirect_to '/login'
      else
        redirect_to '/'
      end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
