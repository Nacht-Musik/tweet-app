class CreateMicroposts < ActiveRecord::Migration[5.1]
  def change
    create_table :microposts do |t|
      t.references :user, foreign_key: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
