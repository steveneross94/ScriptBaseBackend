class CreateGenerics < ActiveRecord::Migration[6.0]
  def change
    create_table :generics do |t|
      t.integer :brand_name_id
      t.string :name
      t.integer :price
    end
  end
end
