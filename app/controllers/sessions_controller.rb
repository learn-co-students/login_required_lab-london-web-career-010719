class SessionsController < ApplicationController

    def new
    end
  
    def create
        if !params[:name] || params[:name].empty?
            return redirect_to login_path
        end
        session[:name] = params[:name]
        redirect_to root_path
    end
  
    def destroy
      session.delete(:name)
      redirect_to login_path
    end

end