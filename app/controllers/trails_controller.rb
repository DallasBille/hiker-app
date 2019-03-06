class TrailsController < ApplicationController
    before_action :get_trail, only: [:show]

    def index
        @trails = Trail.all
    end

    def show
        @list = List.new
    end



    private

    def get_trail
        @trail = Trail.find(params[:id])
    end

end
