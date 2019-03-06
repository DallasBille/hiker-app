class UserTrailsController < ApplicationController

def new
    @user_trail = UserTrail.new
    @trails = Trail.all
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
    params.require(:user_trail).permit(:rating, :review, :user_id, :trail_id)
end

end
