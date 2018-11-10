require 'rails_helper'

RSpec.describe Photo, :type => :model do
	subject { described_class.new }

	it "is valid with valid attributes" do
  		subject.caption = "Anything"
		subject.page_name = "Anything"
		subject.sequence = 1
		expect(subject).to be_valid
	end

	it "is not valid without a page_name" do
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a caption" do
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a sequence" do
    	expect(subject).to_not be_valid
  	end
end