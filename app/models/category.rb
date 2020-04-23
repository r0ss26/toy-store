class Category < ApplicationRecord
  has_many :books_genres
  has_many :toys, through: toys_categories
end
