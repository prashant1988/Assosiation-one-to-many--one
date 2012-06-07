class Flat < ActiveRecord::Base
  attr_accessible :rooms, :colour
  belongs_to :house
  has_one :family
end
