class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end

    def create
        @user = User.new(user_params)
        byebug
        if @user.save 
            render json: @user, status: :accepted
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        find_by
        render json:@user
    end

    def destroy 
        find_by
        @user.destroy
    end 

    private 

    def user_params
        params.require(:user).permit(:user_name, :email, :password, :image_url)
    end

    def find_by 
        @user = User.find_by(id: params[:id])
    end

end
