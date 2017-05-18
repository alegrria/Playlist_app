class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.stringlast_name :first_name
      t.string :email
      t.string :user_name

      t.timestamps
    end
  end
end
