class Bgm < ApplicationRecord

  belongs_to :instance, polymorphic: true
  belongs_to :track

end
