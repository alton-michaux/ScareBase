class ChangeMoviesAndPodcastsMoodToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :movies, :mood, :text, array: true, default: [].to_yaml
    change_column :podcasts, :mood, :text, array: true, default: [].to_yaml
  end

  def down
    change_column :movies, :mood, :text
    change_column :podcasts, :mood, :text
  end
end
