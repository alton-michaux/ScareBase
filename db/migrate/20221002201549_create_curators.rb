# frozen_string_literal: true

class CreateCurators < ActiveRecord::Migration[6.1]
  def change
    create_table :curators do |t|
      t.string :name
      t.integer :age
      t.text :podcasts

      t.timestamps
    end
  end
end
