class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string  :name, null: false
      t.string  :name_kana, null: false
      t.integer :prefecture_id, null: false
      t.string  :city, null: false
      t.string  :city_kana, null: false
      t.string  :address, null: false
      t.string  :build_name
      t.string  :build_name_kana
      t.string  :phone_number, null: false
      t.string  :position
      t.string  :president_name, null: false
      t.string  :president_name_kana, null: false
      t.timestamps
    end
  end
end
