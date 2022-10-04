# frozen_string_literal: true

class ChangeFavoritesMoviesAndPodcastsToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :favorites, :movies, :text, array: true, default: [].to_yaml
    change_column :favorites, :podcasts, :text, array: true, default: [].to_yaml
  end

  def down
    change_column :favorites, :movies, :text
    change_column :favorites, :podcasts, :text
  end
end
