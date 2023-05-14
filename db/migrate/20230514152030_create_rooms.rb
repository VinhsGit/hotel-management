class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :bedNum
      t.decimal :price
      t.string :description
      t.boolean :isAvailable

      t.timestamps
    end
  end
end
