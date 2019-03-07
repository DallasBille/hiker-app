class UserTrailsController < ApplicationController
    before_action :get_user_trail, only: [:edit, :show, :update, :destroy]

    def new
        @user_trail = UserTrail.new
        @trails = Trail.all
    end

    def create
        @user_trail = UserTrail.new(ut_params)
        if @user_trail.save
            redirect_to trail_path(@user_trail.trail_id)
        else
            flash[:errors] = @user_trail.errors.full_messages
                if flash[:errors] == ["Review can't be blank"]
                    flash[:errors] = "Review can't be blank"
                elsif flash[:errors] == ["Review can't be blank", "User You have already reviewed this trail"]
                    flash[:errors] ="You have already reviewed this trail"
                elsif flash[:errors] == ["User You have already reviewed this trail"]
                    flash[:errors] = "You have already reviewed this trail"
                end
            redirect_to new_user_trail_path
        end
    end

    def edit
        @trails = Trail.all
    end

    def update
        @user_trail.update(ut_params)
        redirect_to trail_path(@user_trail.trail_id)

    end

    def destroy
        @user_trail.destroy
        redirect_to trail_path(@user_trail.trail_id)
    end


    private
    def ut_params
        params.require(:user_trail).permit(:rating, :review, :user_id, :trail_id)
    end

    def get_user_trail
        @user_trail = UserTrail.find(params[:id])
    end

end
