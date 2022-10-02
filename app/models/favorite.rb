class Favorite < ApplicationRecord
    serialize :movies, Array
    serialize :podcasts, Array
end
