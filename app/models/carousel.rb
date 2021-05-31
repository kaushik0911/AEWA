class Carousel < ApplicationRecord
  has_one_attached :image

  scope :show, -> { where(desplay: true) }
end
