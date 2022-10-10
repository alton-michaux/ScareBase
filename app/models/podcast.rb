# frozen_string_literal: true

class Podcast < ApplicationRecord
  serialize :cast, Array
  serialize :mood, Array

  belongs_to :favorite

  has_one :curator

  has_many :cast_members
end
