class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :item, optional: true

  def image_url
      self.image.image_url
  end
end
