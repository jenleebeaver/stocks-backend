class Api::V1::PortfoliosController < ApplicationController

    def index
        @portfolios = Portfolio.all 
        render json: @portfolios
    end

    def create
        @portfolio = Portfolio.new(portfolio_params)
        if @portfolio.save 
            render json: @portfolio, status: :accepted
        else
            puts "error here"
            puts @portfolio.errors.full_messages
            render json: { errors: @portfolio.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        find_by
        render json:@portfolio
    end

    def destroy 
        find_by
        @portfolio.destroy
    end 

    private 

    def portfolio_params
        params.require(:portfolio).permit(:portfolio_name, :user_id, :watchlist)
    end

    def find_by 
        @portfolio = Portfolio.find_by(id: params[:id])
    end

end
