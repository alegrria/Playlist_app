class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.integer :user_id
      t.string :name
      t.string :mp3_ids

      t.timestamps
    end
    add_index :playlists, [:user_id]
  end
end
