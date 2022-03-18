class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :author
end
