class Region < ApplicationRecord

  has_many  :zones, as: :area,
                    inverse_of: :area,
                    dependent: :destroy

  validates :name, presence: true

end
