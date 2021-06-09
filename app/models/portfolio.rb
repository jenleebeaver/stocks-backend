class Portfolio < ApplicationRecord
    belongs_to :user

    serialize :watchlist, Array

    validates :portfolio_name, presence: true
end
