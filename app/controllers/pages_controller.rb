class PagesController < ApplicationController
  # Redirect to login page if not login
  before_action :authenticate_user! , only: [:devise_test]

  def devise_test
  end

  def new
    @user = current_user
  end

  def index
  end
end