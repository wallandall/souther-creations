require 'rails_helper'

describe User do

  let(:user) {
    User.create!(email: "test@test.com", password: "test123")
  }

  it "is a valid user" do
    expect(user.email).to eq "test@test.com"
  end

  it "is not a valid password" do
    expect(user.password).to eq "test123"
   end
end
