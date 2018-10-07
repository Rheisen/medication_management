class PrescriptionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :dosage, :active
  belongs_to :patient
  belongs_to :medication
end
