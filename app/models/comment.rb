class Comment < ActiveRecord::Base
  validates :content, :post_date, presence: true
  belongs_to :author
  belongs_to :post
end
