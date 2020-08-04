class CreateAlternatives < ActiveRecord::Migration[6.0]
  def change
    create_table :alternatives do |t|
      t.integer :brand_name_id
      t.string :name
      t.integer :price
      t.string :description
    end
  end
end
