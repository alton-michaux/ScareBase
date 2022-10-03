class AddIndexToFavorites < ActiveRecord::Migration[6.1]
  def up
    add_reference :favorites, :account, foreign_key: true
  end

  def down
    remove_reference :favorites, :account, foreign_key: true
  end
end
