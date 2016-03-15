class Post < ActiveRecord::Base
  validates :title, :content, :post_date, presence: true
  belongs_to :author
  has_many :comments
end
