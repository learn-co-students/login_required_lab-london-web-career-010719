class SessionsController < ApplicationController#

  def new
  end

  def create
      session[:name] = params[:name]
      if session[:name] == nil || session[:name] == ""
        redirect_to '/login'
      else
        redirect_to secrets_path
      end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
