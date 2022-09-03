class CreateLends < ActiveRecord::Migration[7.0]
  def change
    create_table :lends do |t|
      t.string :status, null: false
      t.date :return_at, null: false
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
