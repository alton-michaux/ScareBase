class Podcast < ApplicationRecord
    serialize :cast, Array
    serialize :mood, Array
end
