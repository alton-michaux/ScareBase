class ChangeCastToCastMembers < ActiveRecord::Migration[6.1]
  def up
    rename_table :casts, :cast_members
  end

  def down
    rename_table :cast_members, :casts
  end
end
