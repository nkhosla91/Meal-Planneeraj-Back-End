class Api::V1::UserfoodsController < ApplicationController

    def index
        userfoods = Userfood.all 
        render json: userfoods
    end

    def create
        user = params[:user_id]
        food = params[:food_id]
        userfood = Userfood.new(user_id: user, food_id: food)
        if userfood.save
          render json: userfood
        else
          render json: {errors: user.errors.full_messages}, status: 403
        end
    end

end