class BasicFinancialSerializer < ActiveModel::Serializer

  attributes :id, :symbol, :peNormalizedAnnual, :stock_id, :portfolio_id, :updated_at, :created_at

end
