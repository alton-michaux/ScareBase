# frozen_string_literal: true

class ChangeMoviesAndPodcastsCastToText < ActiveRecord::Migration[6.1]
  def up
    change_column :movies, :cast, :text
    change_column :podcasts, :cast, :text
  end

  def down
    change_column :movies, :cast, :text
    change_column :podcasts, :cast, :text
  end
end
