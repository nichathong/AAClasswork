class UsersController < ApplicationController
    def new
        @user = User.new
        render :new
    end

    def create
        @user = User.new(user_params)
        if @user.save!
            login(@user)
            redirect_to user_url(@user)
        end

    end

    def show
        @user = User.allow_nil
        render :new
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :email)
    end
end
