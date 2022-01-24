class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer    :price, null: false
      t.integer    :seat, null: false
      t.datetime   :date, null: false
      t.integer    :request_1, null: false
      t.integer    :request_2
      t.references :company, null: false, foreign_key: true
      t.timestamps
    end
  end
end
