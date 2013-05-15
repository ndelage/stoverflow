require 'spec_helper'

describe User do
  let(:user) { build(:user) }

  it 'validates the length of a good name' do
    user.should be_valid
  end
  it 'validates the length of a bad name' do
    user = build(:user, :name => '')
    user.should_not be_valid
  end


  it 'validates the length of a good email' do
    user.should be_valid
  end
  it 'validates the length of a bad email' do
    user = build(:user, :email => '')
    user.should_not be_valid
  end


  it 'validates the length of a good password' do
    user.should be_valid
  end
  it 'validates the length of a bad password' do
    user = build(:user, :password => '')
    user.should_not be_valid
  end


  it 'validates the format of a good email' do
    user.should be_valid
  end
  it 'validates the format of a bad email' do
    user = build(:user, :email => 'Pat Smells')
    user.should_not be_valid
  end


  it 'validates the uniqueness of a bad email' do
    build(:user, :email => 'PatSmells')
    user = build(:user, :email => 'PatSmells')
    user.should_not be_valid
  end
end
