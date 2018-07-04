class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :rank
      t.string :title
      t.float :sales
      t.float :audi

      t.timestamps null: false
    end
  end
end
