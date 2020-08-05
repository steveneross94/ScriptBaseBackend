class DeleteImg < ActiveRecord::Migration[6.0]
  def change
    remove_column :brand_names, :img
  end
end
