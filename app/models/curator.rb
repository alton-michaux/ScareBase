# frozen_string_literal: true

class Curator < ApplicationRecord
  serialize :podcasts, Array

  has_many :podcasts
end
