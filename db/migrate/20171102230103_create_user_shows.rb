class CreateUserShows < ActiveRecord::Migration[5.1]
  def change
    create_table :user_shows do |t|
      t.references :user, index: true
      t.references :show, index: true
      t.integer :status, default: 0
      t.integer :progress, default: 0

      t.timestamps
    end
  end
end
