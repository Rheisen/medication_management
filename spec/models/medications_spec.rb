require 'rails_helper'

RSpec.describe Medication, type: :model do
  it { should have_many(:prescriptions) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:uses) }
  it { should validate_presence_of(:side_effects) }
  it { should validate_presence_of(:available) }
end
