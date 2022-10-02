class CreatePodcasts < ActiveRecord::Migration[6.1]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.text :description
      t.string :year
      t.string :curator
      t.string :cast

      t.timestamps
    end
  end
end
