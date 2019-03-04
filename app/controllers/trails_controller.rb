class TrailsController < ApplicationController


    def index
        @trails = Trail.all

    end

    def show
        get_trail
        
    end


    private

    def get_trail
        @trail = Trail.find(params[:id])
    end
end
