class PagesController < ApplicationController
  def index
  end

  def show
    @user = current_user
    pages_path(id: @user.id)
  end
end
