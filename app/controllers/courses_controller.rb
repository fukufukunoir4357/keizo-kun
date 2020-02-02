class CoursesController < ApplicationController
  def index
  end
  
  def create
    @courses = Course.where(site_id: params[:site_id])
  end
end
