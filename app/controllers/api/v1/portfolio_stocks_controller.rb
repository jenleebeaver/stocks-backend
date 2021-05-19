class API::V1::PortfolioStocksController < ApplicationController

    def index
        @portfolioStock = PortfolioStock.all 
        render json: @portfolioStock
    end

    def create
        @portfolioStock = PortfolioStock.new(portfolioStock_params)
        if @portfolioStock.save 
            render json: @portfolioStock, status: :accepted
        else
            render json: { errors: @portfolioStock.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        find_by
        render json: @portfolioStock
    end

    def destroy 
        find_by
        @portfolioStock.destroy
    end 

    private 

    def portfolioStock_params
        params.require(:portfolio_stock).permit(:portfolio_id, :stock_id)
    end

    def find_by 
        @portfolioStock = PortfolioStock.find_by(id: params[:id])
    end

end
