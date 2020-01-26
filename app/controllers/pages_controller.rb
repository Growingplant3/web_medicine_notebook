class PagesController < ApplicationController
  # Redirect to login page if not login
  before_action :authenticate_user! , only: [:devise_test]
　# devise_page create
  def devise_test
  end

  def index
  end
end