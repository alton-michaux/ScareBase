# frozen_string_literal: true

class Director < ApplicationRecord
  serialize :movies, Array

  has_many :movies
end
