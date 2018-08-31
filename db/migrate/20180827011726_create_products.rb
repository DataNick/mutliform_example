class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :author
      t.string :section
      t.integer :quantity
      t.string :manufacturer
      t.text :description
      t.decimal :price
      t.integer :rating

      t.timestamps
    end
  end
end
