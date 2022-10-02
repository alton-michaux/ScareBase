class Cast < ApplicationRecord
    serialize :movies, Array
    serialize :podcasts, Array
end
