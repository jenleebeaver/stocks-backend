class Portfolio < ApplicationRecord
    belongs_to :user

    validates :portfolio_name, presence: true
end
