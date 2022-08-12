class List < ApplicationRecord
  has_many :bookmarks, dependent: :delete_all
  has_many :movies, through: :bookmarks
  has_many :reviews
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
end
