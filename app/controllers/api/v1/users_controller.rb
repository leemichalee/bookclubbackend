class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json:users
    end

    def create
        user = User.create!(user_params)
        render json:user
    end

    def show
        user = User.find(params[:id])
        render json:user
    end

    def update
        user = User.find(params[:id])
        user.update(bio: params[:bio])
        render json:user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
    end

    private
    
    def user_params
        params.permit(:username, :email, :password, :bio)
    end
end