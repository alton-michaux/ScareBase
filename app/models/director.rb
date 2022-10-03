# frozen_string_literal: true

class Director < ApplicationRecord
  serialize :movies, Array
  serialize :podcasts, Array

  has_many :movies
end
