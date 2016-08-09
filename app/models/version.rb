class Version < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :images, dependent: :destroy
  belongs_to :project
end
