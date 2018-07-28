class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :category
  has_many :orders
  has_many :comments

  def self.search(search_term)
    Product.where("LOWER(name) LIKE ?", "%#{search_term.downcase}%")
  end

  def highest_rating_comment
    comments.rating_desc.first
  end
  def lowest_rating_comment
    comments.rating_desc.last
  end

  def average_rating
    comments.average(:rating).to_f
  end
end
