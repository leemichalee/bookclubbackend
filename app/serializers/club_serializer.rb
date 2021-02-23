class ClubSerializer < ActiveModel::Serializer
    attributes :id, :description, :genre, :owner_id, :title
end