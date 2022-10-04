# frozen_string_literal: true

class RemoveEmailFromAccount < ActiveRecord::Migration[6.1]
  def up
    remove_column :accounts, :email, :string
  end

  def down
    add_column :accounts, :email, :string
  end
end
