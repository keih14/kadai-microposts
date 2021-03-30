class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  #お気に入り
  has_many :favorites
  has_many :favusers, through: :favorites, source: :user
end
