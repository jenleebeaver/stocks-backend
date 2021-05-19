class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :s, :p, :updated_at
  has_many :stocks 
end
