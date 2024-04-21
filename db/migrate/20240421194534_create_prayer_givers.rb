class CreatePrayerGivers < ActiveRecord::Migration[7.1]
  def change
    create_table :prayer_givers do |t|
      t.string :first_name
      t.string :city
      t.string :email
      t.date :end_date

      t.timestamps
    end
  end
end
