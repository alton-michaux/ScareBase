# frozen_string_literal: true

class ChangeMoviesAndPodcastsCastToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :movies, :cast, :text, array: true, default: [].to_yaml
    change_column :podcasts, :cast, :text, array: true, default: [].to_yaml
  end

  def down
    change_column :movies, :cast, :text
    change_column :podcasts, :cast, :text
  end
end
