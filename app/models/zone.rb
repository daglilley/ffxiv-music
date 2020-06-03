class Zone < ApplicationRecord

  belongs_to :area, polymorphic: true
  
  has_many   :zones, as: :area,
                     inverse_of: :area,
                     dependent: :destroy
  has_many   :bgms,  as: :instance,
                     inverse_of: :instance,
                     dependent: :destroy

  validates  :name,      presence: true
  validates  :area_id,   presence: true
  validates  :area_type, presence: true
  
end
