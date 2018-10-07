class MedicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :uses, :side_effects, :available
  has_many :patients
end
