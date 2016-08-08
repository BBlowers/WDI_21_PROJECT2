class Version < ApplicationRecord
  has_many :images
  belongs_to :project
end
