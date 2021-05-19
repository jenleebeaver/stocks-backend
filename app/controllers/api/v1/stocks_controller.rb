class Api::V1::StocksController < ApplicationController
    before_action :set_portfolio

    def index
        #this will route api/v1/portfolios/id/stocks
        @stocks = @portfolio.stocks  
        render json: @stocks
    end

    def show
        find_by
        render json: @stock
    end

    def create
        @stock = @portfolio.stock.build(stock_params)
        if @stock.save 
            render json: @stock, status: :accepted
        else
            render json: { errors: @stock.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy 
        find_by
        @stock.destroy
    end 

    private
    
    def set_portfolio
         @portfolio = Portfolio.find_by(id: params[:portfolio_id])
    end

    def stock_params
        params.require(:stock).permit(:s, :p, :description, :country, :currency, :exchange, :ipo, :finnhubIndustry, :marketCapitalization, :peers, :buy, :hold,:sell, :strongBuy, :strongSell, :peRatio, :portfolio_id, :portfolio_stock_id)
    end

    def find_by 
        @stock = Stock.find_by(id: params[:id])
    end
end
