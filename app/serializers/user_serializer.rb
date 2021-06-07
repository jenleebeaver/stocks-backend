class UserSerializer < ActiveModel::Serializer
  # include FastJsonapi::ObjectSerializer
  has_many :portfolios 

  attributes :id, :username, :image_url, :email
end
