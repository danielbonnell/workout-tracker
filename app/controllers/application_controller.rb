class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    private

    def authenticate_user
        if !user_signed_in?
            redirect_to new_user_session_path
        end
    end
end
