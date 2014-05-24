class Relationship < ActiveRecord::Base
  belongs_to :author
  belongs_to :book
  
  validates :author_id, presence: true
  validates :book_id, presence: true
end
