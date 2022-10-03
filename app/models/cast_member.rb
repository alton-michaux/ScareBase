# frozen_string_literal: true

class CastMember < ApplicationRecord
  serialize :movies, Array
  serialize :podcasts, Array

  has_many :movies
  has_many :podcasts
end
