class Service < ApplicationRecord
  has_one_attached :image

  scope :show, -> { where(display: true) }
end
