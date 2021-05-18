class Stock < ApplicationRecord
    belongs_to :portfolio
    belongs_to :portfolio_stock

    serialize :peers,Array

    validates :s, :p, :description, :country, :currency, :exchange, :ipo,:finnhubIndustry, :marketCapitalization, :buy, :hold, :sell, :strongBuy, :strongSell, :peRatio, :portfolio_id, :portfolio_stock_id, presence: true

    #took out :peers
    #note: to write custom errors write each validation separately
end

