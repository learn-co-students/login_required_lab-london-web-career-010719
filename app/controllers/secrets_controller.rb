class SecretsController < ApplicationController
    before_action :require_login
  
  def show
    @current_user = current_user
  end

end