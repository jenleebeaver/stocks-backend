class BasicFinancial < ApplicationRecord
    belongs_to :portfolio
    belongs_to :stock

    validates :symbol, :peNormalizedAnnual, :stock_id, :portfolio_id, presence: true 
end
