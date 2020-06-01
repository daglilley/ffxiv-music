class Track < ApplicationRecord

  has_many   :bgms
  belongs_to :expansion
  has_one    :orchestrion

end