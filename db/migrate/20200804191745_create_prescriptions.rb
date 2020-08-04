class CreatePrescriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :brand_name_id
      t.integer :price
      t.integer :dosage
      t.timestamps
    end
  end
end
