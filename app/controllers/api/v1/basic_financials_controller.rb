class Api::V1::BasicFinancialsController < ApplicationController

    def index
        @basic_financials = BasicFinancial.all 
        render json: @basic_financials
    end

    def create
        @basic_financials = BasicFinancial.new(basic_financials_params)
        if @basic_financials.save 
            render json: @basic_financials, status: :accepted
        else
            render json: { errors: @basic_financials.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def show
        find_by
        render json:@basic_financials
    end

    def destroy 
        find_by
        @basic_financials.destroy
    end 

    private 

    def portfolio_params
        params.require(:basic_financials).permit(:symbol, :peNormalizedAnnual, :stock_id, :portfolio_id)
    end

    def find_by 
        @basic_financials = BasicFinancial.find_by(id: params[:id])
    end

end
