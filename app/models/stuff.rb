class Stuff < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  validates :name, presence: true 
  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 1  , message: "can't be blank"}
  validates :image, presence: true
end
