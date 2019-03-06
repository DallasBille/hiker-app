class ListsController < ApplicationController


    def new
        @list = List.new
    end

    def create
        @list = List.new(get_params)
        if @list.save
            redirect_to trail_path(@list.trail_id)
        else
            flash[:errors] = @list.errors.full_messages
        end

    end

    private

    def get_params
        byebug
        params.require(:list).permit(:user_id, :trail_id)
    end

end
