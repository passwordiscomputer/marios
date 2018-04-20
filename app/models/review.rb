class Review < ActiveRecord::Base
  belongs_to :product
  validates :rating, :presence => true
  validates :rating, :numericality => { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :content_body, :length => {minimum: 50, maximum: 250}
  validates :rating, :presence => true
end
