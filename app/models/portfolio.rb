class Portfolio < ApplicationRecord
    has_many :stocks
    has_many :cryptoexchanges  
    has_many :portfolio_stocks, :through :stocks

    #serializes text field into array 
    serialize :cryptoexchanges,Array

    validates :s, :p, :cryptoexchanges, presence: true
end
