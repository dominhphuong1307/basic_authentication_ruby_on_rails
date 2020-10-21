class Admins::SessionsController < ApplicationController
    def new
    end
  
    def create
        admin = Admin.find_by(email: params[:session][:email])
        if admin && admin.authenticate(params[:session][:password])
            log_in admin
            flash[:success]= "Admin Sign In Successful."
            redirect_to admins_home_path
          #TODO save user infor into session
        else
          flash[:danger] = "Invalid email/password combination"
            redirect_to admins_login_path
        end
    end
  
    def destroy
        session.delete(:admin_id)
        flash[:success] = "Successfully Log Out!"
        redirect_to admins_login_path
    end
end