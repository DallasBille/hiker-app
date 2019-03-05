class UserTrailsController < ApplicationController


    def new
        @trails = Trail.all
        @user_trail = UserTrail.new
    end

    def create
        @user_trail = UserTrail.new(ut_params)
        if @user_trail.save
            redirect_to @user_trail.trail_id
        else
            flash[:errors] = "Please write a short review of the trail"
            redirect_to new_user_trail_path
        end


    end


    private

    def ut_params
        byebug
        params.require(:user_trail).permit(:user_id, :trail_id, :rating, :review)
    end

end
