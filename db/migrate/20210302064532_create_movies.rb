class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name, limit: 80
      t.string :genres
      t.integer :year
      t.string :director, limit: 60
      t.string :main_star, limit: 60
      t.string :description, limit: 400

      t.timestamps
    end
  end
end
