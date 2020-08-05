class ChangePriceColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :brand_names, :price, :string
  end
end
