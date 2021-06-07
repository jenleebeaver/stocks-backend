class PortfolioSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  belongs_to :user

  attributes :id, :portfolio_name, :user_id, :updated_at, :created_at
end
