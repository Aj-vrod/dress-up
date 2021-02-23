class AddUserToDress < ActiveRecord::Migration[6.0]
  def change
    add_reference :dresses, :user, null: false, foreign_key: true
  end
end
