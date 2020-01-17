class PagesController < ApplicationController
  # Redirect to login page if not login
  before_action :authenticate_user! , only: [:devise_test]
　# devise_page create
  def devise_test
    @user = User.find(params[:id])
  end  
  
  def log_out
    log_out if user_signed_in?
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to pages/index
  end

  def index
  end
end
