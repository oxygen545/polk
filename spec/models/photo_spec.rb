require 'rails_helper'

RSpec.describe Photo, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_one(:image).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:page_name) }
  it { should validate_presence_of(:caption) }
  it { should validate_presence_of(:sequence) }
end