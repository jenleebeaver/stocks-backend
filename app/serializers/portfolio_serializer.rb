class PortfolioSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :portfolio_name, :user_id, :updated_at, :created_at
end
