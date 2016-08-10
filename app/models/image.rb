class Image < ApplicationRecord
  mount_uploader :image_src, PictureUploader
  belongs_to :version
end
