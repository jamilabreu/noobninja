class Invite < ActiveRecord::Base
  attr_accessible :background, :email, :sensei
  validates :email, :presence => true#, :email => true
  validates :background, :presence => true, :if => :background_needed?

  def background_needed?
    sensei == true
  end    
end
