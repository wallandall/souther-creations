class Product < ApplicationRecord
  belongs_to :category
  has_many :orders

  def self.search(search_term)
    Product.where("LOWER(name) LIKE ?", "%#{search_term.downcase}%")
  end
end
