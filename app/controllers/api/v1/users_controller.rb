class Api::V1::UsersController < ApplicationController
    def index
        user = User.all
        render json: user
    end 

    def create
        user = User.new(
            username: params[:username],
            password: params[:password]
        )
        if user.save
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def user_params
        params.require(:user).permit!
    end
end
