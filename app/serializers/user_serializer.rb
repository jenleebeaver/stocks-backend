class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  has_many :portfolios 
  attributes :id, :user_name, :email, :image_url, :created_at, :updated_at
end
