class PagesController < ApplicationController
  def index
  end

  def show
    @user = current_user
    pages_path(id: :current_user_id)
    
    @site = Site.new
    @sites = Site.all
    
    @course = Course.new
    
    @favorite = Favorite.new
  end
end
