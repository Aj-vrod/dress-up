class ChangeColumnNameToCategory < ActiveRecord::Migration[6.0]
  def change
    rename_column :dresses, :kind, :category
  end
end
