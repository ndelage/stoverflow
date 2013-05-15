class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :handle, :email, :password

  validates :handle,     :presence => true
  validates :email,    :presence => true


  validates :handle,  :uniqueness => true
  validates :email, :uniqueness => true


  validates :handle,     :length => { :minimum => 6, :maximum => 15 }
  validates :password, :length => { :minimum => 6 }

  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }


  # def self.authenticate(username, password)
  #   where(:handle => handle).try(:authenticate, password)
  # end

end
