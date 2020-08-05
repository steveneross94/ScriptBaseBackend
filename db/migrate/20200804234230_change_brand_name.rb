class ChangeBrandName < ActiveRecord::Migration[6.0]
  def change
    remove_column :brand_names, :ndc_num
    add_column :brand_names, :ndc_num, :string
  end
end
