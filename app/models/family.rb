class Family < ActiveRecord::Base
   attr_accessible :members, :cast, :salary,:flat_id
   belongs_to :flat
end
