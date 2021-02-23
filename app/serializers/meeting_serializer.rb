class MeetingSerializer < ActiveModel::Serializer
    attributes :id, :club_id, :zoom, :description
end