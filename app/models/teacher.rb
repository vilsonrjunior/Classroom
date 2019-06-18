class Teacher < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :courses, foreign_key: :teacher_id
  has_many :students, through: :courses
end

# class Teacher < ApplicationRecord
#   mount_uploader :photo, PhotoUploader
#   # Include default devise modules. Others available are:
#   # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   has_many :courses, dependent: :destroy
#   has_many :lessons, through: :courses, dependent: :destroy
#   has_many :students, through: :courses
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
#   validates :first_name, presence: true
#   validates :last_name, presence: true
# end
