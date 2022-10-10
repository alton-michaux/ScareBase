# frozen_string_literal: true

class Movie < ApplicationRecord
  serialize :cast, Array
  serialize :mood, Array

  belongs_to :favorite

  has_one :director

  has_many :cast_members
end
