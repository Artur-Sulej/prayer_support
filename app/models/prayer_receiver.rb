class PrayerReceiver < ApplicationRecord
  validates :first_name, presence: true
  validates :end_date, presence: true
  validates :email,
    format: { with: /\A(.+)@(.+)\z/, message: "Email invalid" },
    uniqueness: { case_sensitive: false },
    length: { minimum: 4, maximum: 254 }

  def self.ransackable_attributes(auth_object = nil)
    @ransackable_attributes ||= column_names + _ransackers.keys + _ransack_aliases.keys + attribute_aliases.keys
  end
end
