module SessionsHelper

    def log_in admin
        session[:admin_id] = admin.id
    end

    def logged_in?
        !current_admin.nil?
    end
    
    def admin_signed_in
        unless logged_in?
            flash[:danger] = "Please Log In!"
            redirect_to admins_root_path
        end
    end
end