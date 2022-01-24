class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.string :range, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
