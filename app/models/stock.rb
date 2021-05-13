class Stock < ApplicationRecord
    belongs_to :portfolio

    validates :s, :p, :description, presence: true
end
