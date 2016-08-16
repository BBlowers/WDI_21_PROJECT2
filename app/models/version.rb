class Version < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  has_one :main_image, class_name: "Image", foreign_key: "version_id", dependent: :destroy #polyamourous
  belongs_to :project
end
