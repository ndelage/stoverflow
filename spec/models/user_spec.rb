require 'spec_helper'

describe User do

  let(:name) {'pirate'}
  let(:email)    {'booty'}
  let(:password) {'blackbeard'}
  let(:user) {User.new(username: username,
                       email:    email,
                       password: password
                       )}

  it 'has a username' do
    user.name.should == name
  end
end
