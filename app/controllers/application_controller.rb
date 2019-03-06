class ApplicationController < ActionController::Base
    before_action :login_setup
    

    def login_setup
        @logged_in = !!session[:user_id]
        if @logged_in
            @logged_in_user = User.find(session[:user_id])
        end
    end

    def log_in_user(user)
        session[:user_id] = user.id
    end


end
