class CreateUserShows < ActiveRecord::Migration[5.1]
  def change
    create_table :user_shows do |t|
      t.references :user, index: true
      t.references :show, index: true
      t.integer :status
      t.integer :progress

      t.timestamps
    end
  end
end
