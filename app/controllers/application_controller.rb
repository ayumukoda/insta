class ApplicationController < ActionController::Base
    #ログインやユーザ登録の前にconfigure_permitted_parameter（パラメーターを取得）が使われる
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    
    #devise_parameter_sanitizer.permitメソッドを使うことでユーザー登録(sign_up)の際に、ユーザー名(name)のデータ操作を許可しています
    def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
