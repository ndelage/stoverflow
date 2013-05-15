require 'spec_helper'

describe User do

  let(:name) { 'pirate' }
  let(:email)    { 'parrot@tpb.org' }
  let(:password) { 'blackbeard' }
  let(:user) { User.new(name: name, email: email, password: password) }

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
