class Movie < ApplicationRecord
    serialize :cast, Array
    serialize :mood, Array
end
