class User < ApplicationRecord
    has_many :portfolios, dependent: :destroy 
    has_secure_password 

    # validates :user_name, presence: true, acceptance: { message: "Please add your name." }
    # validates :email, presence: true, acceptance: { message: "Please add your email." }
    # # uniqueness: { case_sensitive: false },
    # validates :password,  presence: true, length: {in: 6..20, message: "Password must be between 6 and 20 characters." }, confirmation: true 
end
