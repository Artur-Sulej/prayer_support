class PrayerReceiver < ApplicationRecord
  validates :first_name, presence: true
  validates :end_date, presence: true
  validates :email,
    format: { with: /\A(.+)@(.+)\z/, message: "Email invalid" },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }
end
