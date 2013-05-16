require 'spec_helper'

describe User do
  let(:user) { build(:user) }

  describe '#Validations' do
    it 'validates the length of a good handle' do
      user.should be_valid
    end
    it 'validates the length of a bad handle' do
      user = build(:user, :handle => '')
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
      pending
    end

  end

  describe '#Authentication' do
    it 'checks the authentication of the user' do
      user.authenticate('blackbeard').should be_true
    end
    it 'checks the authentication of a bad user' do
      user.authenticate('NOT VALID PASSWORD').should be_false
    end
  end
end
