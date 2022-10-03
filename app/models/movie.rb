class Movie < ApplicationRecord
    serialize :cast, Array
    serialize :mood, Array

    belongs_to :director
    has_many :cast_members
end
