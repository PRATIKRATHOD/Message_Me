class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create]
    def login

    end

    def create 
        user=User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success]="yuuuuuppuup"
            redirect_to root_path


        else
            flash.now[:error]= "something wrong"
            render 'new'
    end
end

    def destory
        session[:user_id]=nil
        flash[:success]="succesfully logout"
    end

    private
    def logged_in_redirect
        if logged_in?
            flash[:error]="already logged in"
            redirect_to root_path
        end
    end

end