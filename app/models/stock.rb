class Stock < ApplicationRecord
    belongs_to :portfolio
    belongs_to :portfolio_stock

    serialize :peers,Array

    validates :s, 
            :p, 
            :description, 
            :country, 
            :currency, 
            :exchange, 
            :ipo, 
            :finnhubIndustry, 
            :marketCapitalization, 
            :peers, 
            :buy, 
            :hold, 
            :sell, 
            :strongBuy, 
            :strongSell, 
            :peRatio, 
            :portfolio_id, 
            presence: true
end
