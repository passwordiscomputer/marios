class Review < ActiveRecord::Base
  belongs_to :product
  validates :rating, :presence => true
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, :length => {minimum: 50, maximum: 250}
  validates :rating, :presence => true
end
