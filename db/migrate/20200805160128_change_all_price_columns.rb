class ChangeAllPriceColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :generics, :price, :string
    change_column :alternatives, :price, :string
  end
end
