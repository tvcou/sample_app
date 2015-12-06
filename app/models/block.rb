class Block < ActiveRecord::Base

  validates :name, presence: true
  validates :memo, presence: true

end
