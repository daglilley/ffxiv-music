class Duty < ApplicationRecord

  belongs_to :duty_type
  belongs_to :expansion
  
  has_many   :bgms, as: :instance, inverse_of: :instance, dependent: :destroy
  
end
