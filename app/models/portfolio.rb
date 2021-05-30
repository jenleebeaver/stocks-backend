class Portfolio < ApplicationRecord
    belongs_to :user

    validates :portfolio_name, presence: true, acceptance: { message: "Please enter portfolio name." }
end
