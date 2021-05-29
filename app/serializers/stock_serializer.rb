class StockSerializer < ActiveModel::Serializer

  attributes :id, :description, :country, :currency, :exchange, :ipo, :finnhubIndustry, :marketCapitalization, :peers, :buy, :hold,:sell, :strongBuy, :strongSell, :portfolio_id, :portfolio_stock_id, :updated_at, :created_at

  has_many :basic_financials
  has_many :prices

end
