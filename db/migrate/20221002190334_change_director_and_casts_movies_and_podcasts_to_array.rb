# frozen_string_literal: true

class ChangeDirectorAndCastsMoviesAndPodcastsToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :directors, :movies, :text, array: true, default: [].to_yaml
    change_column :directors, :podcasts, :text, array: true, default: [].to_yaml

    change_column :casts, :movies, :text, array: true, default: [].to_yaml
    change_column :casts, :podcasts, :text, array: true, default: [].to_yaml
  end

  def down
    change_column :directors, :movies, :text
    change_column :directors, :podcasts, :text

    change_column :casts, :movies, :text
    change_column :casts, :podcasts, :text
  end
end
