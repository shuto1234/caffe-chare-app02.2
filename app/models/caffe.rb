class Caffe < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :shop_name, presence: true
  validates :image, presence: true

  def liked_by?(user)
    likes.where(user_id:user.id).exists?
  end
  
  def self.looks(search,word)
    @caffe = Caffe.where("shop_name LIKE?", "%#{word}%")
  end
end
