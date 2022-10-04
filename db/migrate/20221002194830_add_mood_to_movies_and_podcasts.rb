# frozen_string_literal: true

class AddMoodToMoviesAndPodcasts < ActiveRecord::Migration[6.1]
  def up
    add_column :movies, :mood, :text
    add_column :podcasts, :mood, :text
  end

  def down
    remove_column :movies, :mood, :text
    remove_column :podcasts, :mood, :text
  end
end
