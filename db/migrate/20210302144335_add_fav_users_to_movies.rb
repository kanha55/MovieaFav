class AddFavUsersToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :fav_users, :integer, default: 0
  end
end
