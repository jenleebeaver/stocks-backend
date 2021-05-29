class Stock < ApplicationRecord
    belongs_to :portfolio
    belongs_to :portfolio_stock 
    has_many :basic_financials
    has_many :prices 

    serialize :peers,Array

    validates :description, :country, :currency, :exchange, :ipo,:finnhubIndustry, :marketCapitalization, :buy, :hold, :sell, :strongBuy, :strongSell, :portfolio_id, :portfolio_stock_id, presence: true

    #took out :peers
    #note: to write custom errors write each validation separately
end

