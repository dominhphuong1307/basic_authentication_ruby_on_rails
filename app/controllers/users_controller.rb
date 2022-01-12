class UsersController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:id])
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "Updated Successfuly"
            redirect_to @user
        else
            flash[:notice] = "Update Failed"
            redirect_to edit_user_path
        end
    end
    
    private 
    def user_params
        params.require(:user).permit(:username,:phone,:address,:birthday,:avatar)
    end
end
