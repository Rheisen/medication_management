class Patient < ApplicationRecord
  has_many :prescriptions, dependent: :destroy
  has_many :medications, through: :prescriptions

  validates_presence_of :first_name, :last_name, :email, :mobile_number
end
