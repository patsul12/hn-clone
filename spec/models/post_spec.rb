require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of :title }
  it { should validate_presence_of :post_date }
  it { should validate_presence_of :content }
  it { should belong_to :author }
  it { should have_many :comments }
end
