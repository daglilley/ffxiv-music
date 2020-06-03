class Duty < ApplicationRecord

  belongs_to :duty_type
  belongs_to :expansion
  
  has_many   :bgms, as: :instance,
                    inverse_of: :instance,
                    dependent: :destroy

  validates  :name,         presence: true
  validates  :duty_type_id, presence: true
  validates  :expansion_id, presence: true
  
end
