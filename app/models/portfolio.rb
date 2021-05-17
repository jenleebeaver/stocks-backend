class Portfolio < ApplicationRecord
    has_many :stocks
    has_many :cryptoexchanges  
    has_many :portfolio_stocks, :through :stocks

    validates :s, :p, :cryptoexchanges, presence: true
end
