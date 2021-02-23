class BookSerializer < ActiveModel::Serializer
    attributes :id, :author, :title, :publisher, :genre
end