class Curator < ApplicationRecord
    serialize :podcasts, Array

    has_many :podcasts
end
