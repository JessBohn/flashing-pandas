class SetDefaultCorrecColInGuess < ActiveRecord::Migration
  def change
    remove_column :guesses, :correct
    add_column :guesses, :correct, :boolean, default: false
  end
end
