class Colony < ActiveRecord::Base
   attr_accessible :name, :city
  has_many :houses
end
