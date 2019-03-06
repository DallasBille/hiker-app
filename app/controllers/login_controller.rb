class LoginController < ApplicationController

    def new
    end

    def create
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            log_in_user(@user)
            redirect_to @user
        else
            flash[:errors] = "Username or Password you entered was not correct"
            redirect_to new_login_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to new_login_path
    end
end
