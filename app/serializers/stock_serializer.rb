class StockSerializer < ActiveModel::Serializer
  attributes :id, :s, :p, :description, :country, :currency, :exchange, :ipo, :finnhubIndustry, :marketCapitalization, :peers, :buy, :hold,:sell, :strongBuy, :strongSell, :peRatio, :portfolio_id, :portfolio_stock_id
end
