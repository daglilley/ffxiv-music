class Track < ApplicationRecord
  
  has_many   :bgms
  has_one    :orchestrion

  validates  :name, presence: true

end