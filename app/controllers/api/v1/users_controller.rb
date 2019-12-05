class Api::V1::UsersController < ApplicationController

    def index
        users = User.all 
        render json: users
    end
    
    def show
        # byebug
        user = User.find(params[:id])
        render json: user, serializer: UserSerializer
    end

    def create
        # byebug
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: {errors: user.errors.full_messages}, status: 403
        end
    end

    

    private

    def user_params
        params.require(:user).permit( :username, :email, :password, :gender, :age, :height, :weight, :activityLevel, :BMR, :calories, :carbPercent, :fatPercent, :proteinPercent, :carbCalories, :fatCalories, :proteinCalories)
    end
end