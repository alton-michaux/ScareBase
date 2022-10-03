class ChangeDirectorAndCastsMoviesAndPodcastsToText < ActiveRecord::Migration[6.1]
  def up
    change_column :directors, :movies, :text
    change_column :directors, :podcasts, :text
    
    change_column :casts, :movies, :text
    change_column :casts, :podcasts, :text
  end

  def down
    change_column :directors, :movies, :string
    change_column :directors, :podcasts, :string
    
    change_column :casts, :movies, :string
    change_column :casts, :podcasts, :string
  end
end
