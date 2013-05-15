class User < ActiveRecord::Base
  has_secure_password

  has_many :votes

  attr_accessible :handle, :email, :password

  validates :handle,     :presence => true
  validates :email,    :presence => true
  validates :password, :presence => true

  validates :handle,  :uniqueness => true
  validates :email, :uniqueness => true


  validates :handle,     :length => { :minimum => 6, :maximum => 15 }
  validates :password, :length => { :minimum => 6 }

  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

  # def self.authenticate(username, password)
  #   where(:handle => username).try(:authenticate, password)
  # end

end
