class DutyType < ApplicationRecord

  has_many   :duties
  
  validates  :name, presence: true

end
