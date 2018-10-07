class PatientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :mobile_number
  has_many :prescriptions
  has_many :medications

end
