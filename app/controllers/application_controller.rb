class ApplicationController < ActionController::API
    include ActionController::Cookies
    def current_user 
        User.find_by(id: cookies[:user_id])
    end
end
