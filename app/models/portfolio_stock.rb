class PortfolioStock < ApplicationRecord
    has_many :stocks
    has_many :portfolios, :through :stocks

    validations :portfolio_id, :stock_id,  :cryptoexchange_id, presence: true   
end
