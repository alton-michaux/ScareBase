# frozen_string_literal: true

class RemovePodcastsFromDirectors < ActiveRecord::Migration[6.1]
  def up
    remove_column :directors, :podcasts, array: true, default: [].to_yaml
  end

  def down
    add_column :directors, :podcasts, :text
  end
end
