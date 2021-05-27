class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :portfolio_name, :s, :p, :updated_at
  has_many :stocks 
end
