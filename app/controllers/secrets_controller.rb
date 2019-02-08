class SecretsController < ApplicationController
  before_action :require_login
  ##=== Use below to allow certain pages to hve no Auth
  #skip_before_action :require_login, only: [:index]

  def show
  end

  private

  def require_login
    redirect_to login_path if !current_user
    #return head(:forbidden) unless session.include? :name
  end

end
