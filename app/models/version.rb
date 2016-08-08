class Version < ApplicationRecord
  has_many :comments
  has_many :images
  belongs_to :project
end
