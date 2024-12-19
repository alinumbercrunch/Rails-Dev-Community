class HomeController < ApplicationController
  def index
    @users = User.limit(12).order(:created_at)
  end
end
