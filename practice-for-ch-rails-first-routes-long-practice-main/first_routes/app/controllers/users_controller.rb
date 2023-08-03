class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        # user = User.new(name:params[:name],email:params[:email])
        user  = User.new(params.require(:user).permit(:username))
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end

    end

    def show
        render json: params[:id]
    end

   
end