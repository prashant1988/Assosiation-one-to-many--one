class House < ActiveRecord::Base
  attr_accessible :h_name, :h_no, :Colony_id
  belongs_to :colony

  has_many :flats
end
