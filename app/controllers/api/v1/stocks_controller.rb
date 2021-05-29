class Api::V1::StocksController < ApplicationController
    before_action :set_portfolio

    def index
        #this will route api/v1/portfolios/id/stocks
        #can do @stocks = Stocks.all if data is not nested 
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

    #resource: https://rapidapi.com/blog/how-to-use-an-api-with-ruby/
    #issues with serialized data here?
    def search 
        @stocks = find_stock(params[:s])
        unless stocks 
            #check if alert renders in JS ?
            flash[:alert] = "Stock not found. Please try again."
        end
    end 

    private
    
    def set_stock
         @stock = Stock.find_by(id: params[:stock_id])
    end

    def stock_params
        params.require(:stock).permit(:description, :country, :currency, :exchange, :ipo, :finnhubIndustry, :marketCapitalization, :peers, :buy, :hold,:sell, :strongBuy, :strongSell, :portfolio_id, :portfolio_stock_id)
    end

    def find_by 
        @stock = Stock.find_by(id: params[:id])
    end

    def request_api(url)
        #performing get request to url 
        response = Excon.get(
            url,
            headers: {
                #not sure if line 58 is neccessary 
                'FINNHUB-HOST' => URI.parse(url).host,
                'FINNHUB-KEY' => ENV.fetch('FINNHUB_API_KEY')
            }
        )
        return nil if response.status != 200

        JSON.parse(response.body)
    end

    def find_stock(symbol)
        request_api("https://finnhub.io/api/v1/search?q={symbol}' + `api_key=${FINNHUB_API_KEY}")
    end

end
