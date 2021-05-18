class PortfolioStock < ApplicationRecord
    has_many :stocks
    has_many :portfolios, through: :stocks
   
    validates :portfolio_id, :stock_id, presence: true 
end
