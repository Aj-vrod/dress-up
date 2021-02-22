class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :dresses, :type, :kind
  end
end
