class Author < ActiveRecord::Base
  has_many :relationships
  has_many :books, through: :relationships
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
