class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    include SessionsHelper
    def current_admin
        return unless session[:admin_id]
        @current_admin ||= Admin.find(session[:admin_id])
    end
end
