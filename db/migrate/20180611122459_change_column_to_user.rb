class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, after: :id, null: false
    add_index :users, :name, unique: true
  end
end
