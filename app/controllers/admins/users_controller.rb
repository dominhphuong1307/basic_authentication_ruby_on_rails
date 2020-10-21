class Admins::UsersController < ApplicationController
    before_action :admin_signed_in
    def index
        @user = User.all
    end
end