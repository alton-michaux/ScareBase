class Favorite < ApplicationRecord
    serialize :movies, Array
    serialize :podcasts, Array

    belongs_to :account
    
    has_many :movies
    has_many :podcasts
end
