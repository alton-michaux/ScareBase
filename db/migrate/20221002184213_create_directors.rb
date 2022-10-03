# frozen_string_literal: true

class CreateDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.integer :age
      t.text :movies
      t.text :podcasts

      t.timestamps
    end
  end
end
