class Account < ApplicationRecord
    has_one :favorite # favorite model acts as link between account and movie/podcast models

    has_many :movies, through: :favorites
    has_many :podcasts, through: :favorites
end
