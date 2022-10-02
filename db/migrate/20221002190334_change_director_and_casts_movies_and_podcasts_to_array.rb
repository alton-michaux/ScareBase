class ChangeDirectorAndCastsMoviesAndPodcastsToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :directors, :movies, :text, array: true, default: []
    change_column :directors, :podcasts, :text, array: true, default: []
    
    change_column :casts, :movies, :text, array: true, default: []
    change_column :casts, :podcasts, :text, array: true, default: []
  end

  def down
    change_column :directors, :movies, :text
    change_column :directors, :podcasts, :text
    
    change_column :casts, :movies, :text
    change_column :casts, :podcasts, :text
  end
end
