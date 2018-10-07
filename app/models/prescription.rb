class Prescription < ApplicationRecord
  belongs_to :patient
  belongs_to :medication

  validates_presence_of :dosage, :active, :patient_id, :medication_id
end
