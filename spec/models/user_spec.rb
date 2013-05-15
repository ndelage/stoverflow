require 'spec_helper'

describe User do

  let(:user) { create(:user) }

  it 'has a name' do
    user.name.should == name
  end
  it 'has an email' do
    user.email.should == email
  end

  it 'has a hashed password' do
    user.password_digest.should == password
  end
end
