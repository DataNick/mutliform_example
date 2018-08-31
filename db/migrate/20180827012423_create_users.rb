class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.date :date_of_birth
      t.string :email
      t.text :biography
      t.string :twitter_name
      t.string :instagram_name
      t.string :website

      t.timestamps
    end
  end
end
