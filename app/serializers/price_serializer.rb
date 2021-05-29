class PriceSerializer < ActiveModel::Serializer

  attributes :id, :c, :stock_id, :portfolio_id, :updated_at, :created_at

end
