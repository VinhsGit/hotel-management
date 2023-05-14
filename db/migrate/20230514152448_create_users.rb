class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :description
      t.boolean :isAdmin

      t.timestamps
    end
  end
end
