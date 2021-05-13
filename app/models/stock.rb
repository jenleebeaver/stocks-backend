class Stock < ApplicationRecord
    belongs_to :portfolio

    validates :s, presence: true
    validates :p, presence: true
    validates :description, presence: true
end
