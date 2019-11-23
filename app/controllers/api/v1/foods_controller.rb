class Api::V1::FoodsController < ApplicationController

    def index
        foods = Food.all 
        render json: foods
        # byebug
    end
    
    def show
        food = Food.find(params[:id])
        render json: food 
    end

end
