class ChangeBrandNames < ActiveRecord::Migration[6.0]
  def change
    add_column :brand_names, :side_effects, :string
  end
end
