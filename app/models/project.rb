class Project < ApplicationRecord
  has_one :current_version, class_name: "Version", foreign_key: "project_id", dependent: :destroy #polyamourous
  belongs_to :user
  has_many :versions, dependent: :destroy
end
