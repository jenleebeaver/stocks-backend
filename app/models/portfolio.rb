class Portfolio < ApplicationRecord
    has_many :stocks 
    has_many :portfolio_stocks, through: :stocks

    validates :username, :s, :p, presence: true
end
