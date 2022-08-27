class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :status
      t.string :storage_place

      t.timestamps
    end
  end
end
