class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]
  before_action :set_courses, only: [:new, :create, :edit, :update]
  
  def index
   @favorites = Favorite.all(:current_user_id)
   @favorite = Favorite.new
   @courses = Course.where(site_id: params[site_id])
    respond_to do |format|
      format.js
      format.html
    end
  end
  
  # def course_serch
  #   @courses = Course.where(site_id: params[site_id])
  #   respond_to do |format|
  #     format.js
  #   end
  # end
  
  def show
  
  end
  
  def new
    @favorite = Favorite.new
    @courses = Course.none
  end
  
  def edit
    
  end
  
  
  def create
    @favorite = Favorite.new(favorite_params)
    
    if @favorite.save
      redirect_to page_path(current_user), success: 'カリキュラム登録しました'
    else
      redirect_to pages_show_path(current_user_id), danger: 'カリキュラム登録できませんでした'
    end
  end
  
  private
  
  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
  
  def favorite_params
    params.require(:favorite).permit(:name, :site_id, :course_id)
  end
  
  def set_courses
    @courses = Course.all
  end
end
