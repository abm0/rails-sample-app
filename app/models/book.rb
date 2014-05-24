class Book < ActiveRecord::Base
  has_many :relationships
  has_many :authors, through: :relationships
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
