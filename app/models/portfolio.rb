class Portfolio < ApplicationRecord
    validates :portfolio_name, presence: true
end
