class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
 def after_sign_in_path_for(resource)
   @user = current_user
   pages_path(id: @user.id) # ログイン後に遷移するpathを設定
 end

 def after_sign_out_path_for(resource)
  new_user_session_path # ログアウト後に遷移するpathを設定
 end

end
