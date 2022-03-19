class PostSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :body, :author
end
