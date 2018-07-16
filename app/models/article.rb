class Article < ApplicationRecord
  validates :first, presence: true
  validates :last, presence: true
  validates :company, presence: true
  validates :email, presence: true
end
