class CreateDresses < ActiveRecord::Migration[6.0]
  def change
    create_table :dresses do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :type
      t.string :color
      t.string :photo

      t.timestamps
    end
  end
end
