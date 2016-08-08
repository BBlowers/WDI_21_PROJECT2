class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :projects
  mount_uploader :profile_pic, PictureUploader
  validates :username, length: { in: 5..20 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
