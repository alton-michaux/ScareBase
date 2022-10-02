class Director < ApplicationRecord
    serialize :movies, Array
    serialize :podcasts, Array
end
