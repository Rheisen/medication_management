require 'rails_helper'

RSpec.describe Prescription, type: :model do
  it { should belong_to(:patient) }
  it { should belong_to(:medication) }

  it { should validate_presence_of(:dosage) }
  it { should validate_presence_of(:active) }
  it { should validate_presence_of(:patient_id) }
  it { should validate_presence_of(:medication_id) }
end
