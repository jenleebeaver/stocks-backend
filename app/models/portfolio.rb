class Portfolio < ApplicationRecord
    has_many :stocks 
    has_many :portfolio_stocks, through: :stocks

    validates :portfolio_name, :s, :p, presence: true
end
