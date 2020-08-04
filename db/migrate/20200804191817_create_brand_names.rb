class CreateBrandNames < ActiveRecord::Migration[6.0]
  def change
    create_table :brand_names do |t|
      t.string :name
      t.string :common_name
      t.string :description
      t.integer :ndc_num
      t.boolean :generic_option, default: false 
      t.boolean :alternative_option, default: false 
      t.integer :price
      t.string :img
      t.timestamps
    end
  end
end
