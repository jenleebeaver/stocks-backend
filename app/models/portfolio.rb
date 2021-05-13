class Portfolio < ApplicationRecord
    has_many :stocks

    validates :s, presence: true
    validates :p, presence: true
end
