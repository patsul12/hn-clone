class Comment < ActiveRecord::Base
  extend ActsAsTree::TreeWalker
  validates :content, presence: true
  belongs_to :author
  belongs_to :post
  acts_as_tree order: 'created_at'
end
