class Vote < ActiveRecord::Base

  # attr_accessible :value, :user, :votable
  
  belongs_to :votable, :polymorphic => true
  belongs_to :user

  validates :value, :presence => true

end