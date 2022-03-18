class UserSerializer < ActiveModel::Serializer
  has_many :posts

  attributes :id, :name, :email
end
