class House < ActiveRecord::Base
  attr_accessible :h_name, :h_no, :Colony_id
  belongs_to :colony
  validates :h_name,:h_no, :presence =>'true'


  has_many :flats
end
