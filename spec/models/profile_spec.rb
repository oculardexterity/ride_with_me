require 'spec_helper'

describe Profile do
  let(:user) { FactoryGirl.create(:user) }

  before do
  	user.profile.update_attributes(date_of_birth: "12 October 1984", sex: "Male",
  										looking_for_sex: "Female")
  end

  subject { user.profile }

  it { should respond_to(:date_of_birth) }
  it { should respond_to(:sex) }
  it { should respond_to(:looking_for_sex) }

end
