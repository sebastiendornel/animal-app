class UsersController < ApplicationController
    # build out users X
    #   create/show/update/delete user X
    # validations DONE for user and adoption
    # add methods in models (animal average age, most common breed)
    # if animal approved, have conditional on show page saying "live happily with: "
    # index shows all animals. sort animals by adoption status
    # build sessions for login (password later)
    # styling
    # specs
    # analytics page

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to shelters_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :address, :pet_qty, :bio)
    end
end
