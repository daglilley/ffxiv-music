class Zone < ApplicationRecord

  has_many   :zones, as: :area, inverse_of: :area, dependent: :destroy
  belongs_to :area, polymorphic: true

  has_many   :bgms, as: :instance, inverse_of: :instance, dependent: :destroy
  
end
