class SessionsController < ApplicationController

    def login
        # @user = User.find_by(name: params[:name])
        @user = User.new
    end

    # def login_process
    #     byebug
    #     # find the user from the database with this username
    #     user = User.find_by(name: params[:name])
    #     # if the user exist then create a session id
    #     if user && user.authenticate(params[:password])
    #        session[:user_id] = user.id
    #        redirect_to root_path, notice: "Successfully logged in!"
    #     else
    #        flash[:error]= "Incorrect username or password"
    #        redirect_to "/login"
    #     end
    #  end
     def login_process
        @user = User.find_by(name: login_params[:name])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully logged in!"
        else    
            flash[:login_errors] = ['invalid credentials']
            @user = User.new
            redirect_to login_path
        end
     end

    def logout
        session.clear
        redirect_to login_path
    end

    private

    def login_params
        params.require(:user).permit(:name, :password)
    end
end
