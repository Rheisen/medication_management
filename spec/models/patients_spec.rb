require 'rails_helper'

RSpec.describe Patient, type: :model do
  it { should have_many(:prescriptions).dependent(:destroy) }
  it { should have_many(:medications).through(:prescriptions) }

  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:mobile_number) }
end
