class UsersController < ApplicationController
    before_action :get_user, only: [:show, :edit, :update, :destroy]

    def welcome
        #if user has an account then they can log in if not then direct them to render:new

        #render :new

    end

    def index

    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "You signed up successfully"
            flash[:color]= "valid"
        else
            flash[:notice] = "Form is invalid"
            flash[:color]= "invalid"
        end
        render "new"

    end

    def show

    end




    private
    def get_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email)
    end

end
