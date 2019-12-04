class Api::V1::UserfoodsController < ApplicationController

    def index
        userfoods = Userfood.all 
        render json: userfoods
    end

    def show
      # byebug
      userfood = Userfood.find(params[:id])
      render json: userfood
  end

    def create
      # byebug
        user = params[:user_id]
        food = params[:food_id]
        mealtime = params[:mealtime]
        userfood = Userfood.new(user_id: user, food_id: food, mealtime: mealtime)
        if userfood.save
          render json: userfood
        else
          render json: {errors: user.errors.full_messages}, status: 403
        end
    end

    def destroy
      # byebug

      userfood = Userfood.find(params[:id])
      userfood.delete 
      userfoods = Userfood.all

      render json: userfood
    end

end