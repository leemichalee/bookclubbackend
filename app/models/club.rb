class Club < ApplicationRecord
    has_and_belongs_to_many :books
    has_many :meetings
end
