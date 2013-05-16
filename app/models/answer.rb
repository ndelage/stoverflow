class Answer < ActiveRecord::Base
  attr_accessible :content

  has_many :votes, :as => :votable
  belongs_to :user


  validates :content, :presence => true
  
end
