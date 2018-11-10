require 'rails_helper'

RSpec.describe User, type: :model do
  	subject { described_class.new }

	it "is valid with valid attributes" do
  		subject.username = "John Doe"
		subject.email = "someone@email.com"
		subject.password = "password"
		subject.password_confirmation = "password"
		expect(subject).to be_valid
	end
	it "is not valid without a username" do
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without an email" do
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a password" do
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a password_confirmaion" do
    	expect(subject).to_not be_valid
  	end
end
