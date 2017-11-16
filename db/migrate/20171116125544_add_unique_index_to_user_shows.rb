class AddUniqueIndexToUserShows < ActiveRecord::Migration[5.1]
  def change
    add_index(:user_shows, [:user_id, :show_id], unique: true)
  end
end
