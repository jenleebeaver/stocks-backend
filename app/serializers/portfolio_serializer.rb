class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :username, :s, :p, :updated_at
  has_many :stocks 
end
