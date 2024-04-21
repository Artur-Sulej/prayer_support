class CreatePrayerReceivers < ActiveRecord::Migration[7.1]
  def change
    create_table :prayer_receivers do |t|
      t.string :first_name, null: false
      t.string :city
      t.string :email, null: false
      t.date :end_date, null: false

      t.timestamps

      t.index :email, unique: true
    end
  end
end
