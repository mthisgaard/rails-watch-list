class List < ApplicationRecord
  has_many :bookmarks, dependent: :delete_all
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true
end
