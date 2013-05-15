class Answer < ActiveRecord::Base
  attr_accessible :content

  has_many :votes, :as => :votable

  validates :content, :presence => true
  
end
