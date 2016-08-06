class Addshit < ActiveRecord::Migration
  def change
    add_column :rounds, :correct_firsties, :integer, default: nil
  end
end
