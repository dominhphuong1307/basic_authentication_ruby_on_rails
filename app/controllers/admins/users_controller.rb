class Admins::UsersController < ApplicationController
    def index
        @user = User.all
        csv = ExportCsvService.new @user, User::CSV_ATTRIBUTES
        respond_to do |format|
            format.html
            format.csv { send_data csv.perform,
              filename: "users.csv" }
          end
    end
end