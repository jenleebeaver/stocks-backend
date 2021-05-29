class Price < ApplicationRecord
    belongs_to :portfolio
    belongs_to :stock

    validates :c, :portfolio_id, :stock_id, presence: true  
end
