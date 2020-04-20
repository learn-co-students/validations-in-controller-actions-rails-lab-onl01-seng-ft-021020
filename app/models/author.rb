class Author < ActiveRecord::Base
  
  validates :author, presence: true
  validates :email, uniqueness: true
end
