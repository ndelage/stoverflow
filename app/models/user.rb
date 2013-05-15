class User < ActiveRecord::Base
  has_secure_password

  def self.authenticate(username, password)
    where(:username => username).try(:authenticate, password)
  end

end
