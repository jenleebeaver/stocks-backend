class Portfolio < ApplicationRecord
    has_many :stocks 
    has_many :portfolio_stocks, through: :stocks

    validates :s, :p, presence: true
end
