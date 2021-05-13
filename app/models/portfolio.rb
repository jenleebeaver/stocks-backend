class Portfolio < ApplicationRecord
    has_many :stocks

    validates :s, :p, presence: true
end
