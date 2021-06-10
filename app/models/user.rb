class User < ApplicationRecord
  #:dependent => :destroy deletes foreign keys when you try to reset or drop a schema 
  has_many :portfolios, :dependent => :destroy 
  
  #active-storage 
  # has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true
  #  acceptance: { message: "Please enter user name." } 
end
