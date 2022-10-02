class ChangeCuratorPodcastsToArray < ActiveRecord::Migration[6.1]
  def up
    change_column :curators, :podcasts, :text, array: true, default: [].to_yaml
  end

  def down
    change_column :curators, :podcasts, :text
  end
end
