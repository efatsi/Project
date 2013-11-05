require 'spec_helper'

describe User do
  let(:subject) do
    User.create(first_name: "Clark", last_name: "Kent", email: "superman@test.com")
  end

  describe "#full_name" do
    it "returns the first name, followed by the last name" do
      subject.full_name.should == "Clark Kent"
    end
  end

  describe "#to_s" do
    it "returns the full name, followed by the email" do
      subject.to_s.should == "Clark Kent: superman@test.com"
    end
  end
end
