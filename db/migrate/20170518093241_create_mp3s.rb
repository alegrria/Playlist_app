class CreateMp3s < ActiveRecord::Migration[5.0]
  def change
    create_table :mp3s do |t|
      t.string :title
      t.string :interpret
      t.string :album
      t.string :track
      t.string :year
      t.string :genre

      t.timestamps
    end
  end
end
