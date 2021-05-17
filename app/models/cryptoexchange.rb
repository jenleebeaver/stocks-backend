class Cryptoexchange < ApplicationRecord
    belongs_to :portfolio
    belongs_to :portfolio_stock

    validations :symbol, :displaySymbol, :description, :portfolio_id, presence: true 
end
