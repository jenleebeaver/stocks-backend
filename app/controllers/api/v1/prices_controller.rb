class Api::V1::PricesController < ApplicationController

    def index
        @prices = Price.all 
        render json: @prices
    end

    def create
        @prices = Price.new(prices_params)
        if @prices.save 
            render json: @prices, status: :accepted
        else
            render json: { errors: @prices.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        find_by
        render json:@prices
    end

    def destroy 
        find_by
        @prices.destroy
    end 

    private 

    def prices_params
        params.require(:prices).permit(:c, :portfolio_id, :stock_id)
    end

    def find_by 
        @prices = Price.find_by(id: params[:id])
    end
end
