class Api::V1::FoodsController < ApplicationController

    def index
        # byebug
        foods = Food.all 
        render json: foods
        # byebug
    end
    
    def show
        food = Food.find(params[:id])
        render json: food 
    end

    def create
        food = Food.new(food_params)
        if food.save
          render json: food
        else
          render json: {errors: food.errors.full_messages}, status: 403
        end
    end

    private

    def food_params
        params.require(:food).permit( :name, :carbs, :fat, :protein, :calories )
    end

end
