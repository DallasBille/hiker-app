class UserTrailsController < ApplicationController


    def new
        @trails = Trail.all
        @user_trail = UserTrail.new
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

    def destroy
        @user_trail = UserTrail.find(params[:id])
        @user_trail.destroy
        redirect_to trail_path(@user_trail.trail_id)
    end


    private

    def ut_params
        params.require(:user_trail).permit(:user_id, :trail_id, :rating, :review)
    end

end
