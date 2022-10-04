# frozen_string_literal: true

class AddMoviesAndPodcastsToFavorites < ActiveRecord::Migration[6.1]
  def up
    add_column :favorites, :movies, :text
    add_column :favorites, :podcasts, :text
  end

  def down
    remove_column :favorites, :movies, :text
    remove_column :favorites, :podcasts, :text
  end
end
