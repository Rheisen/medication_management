class Medication < ApplicationRecord
  has_many :prescriptions
  has_many :patients, through: :prescriptions

  validates_presence_of :name, :uses, :side_effects, :available
end
