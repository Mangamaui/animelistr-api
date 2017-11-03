class CreateShows < ActiveRecord::Migration[5.1]
  def change
    create_table :shows do |t|
      t.string :title
      t.string :cover
      t.integer :episodes

      t.timestamps
    end
  end
end
