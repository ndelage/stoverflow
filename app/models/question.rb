class Question < ActiveRecord::Base
  # attr_accessible :title, :content

  has_many :votes, :as => :votable
  belongs_to :user

  validates :title, :content, :presence => true
  
end
