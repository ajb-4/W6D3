class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        # user = User.new(name:params[:name],email:params[:email])
        user  = User.new(user_params)
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: params[:id]
    end

    def destroy
        user = User.find(params[:id])
        render json: user
        user.delete
    end

    private
    def user_params
        params.require(:user).permit(:username)
    end
   
end