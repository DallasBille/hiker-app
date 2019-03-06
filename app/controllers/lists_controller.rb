class ListsController < ApplicationController

    def new
        @list = List.new
    end

    def create
        @list = List.new (list_params)
        if @list.save
            redirect_to trail_path(@list.trail_id)
        else
            flash[:errors] = @list.errors.full_messages
        end
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
        redirect_to user_path(@logged_in_user)
    end

    private

    def list_params
        params.require(:list).permit(:user_id, :trail_id)
    end



end
