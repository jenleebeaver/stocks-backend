class Portfolio < ApplicationRecord
    has_many :stocks 
    has_many :portfolio_stocks, through: :stocks
    has_many :basic_financials
    has_many :prices

    validates :portfolio_name, presence: true
end
