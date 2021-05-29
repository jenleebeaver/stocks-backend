class PortfolioSerializer < ActiveModel::Serializer

  attributes :id, :portfolio_name, :updated_at, :created_at

  has_many :stocks
  has_many :basic_financials 
  has_many :prices

end
