require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should validate_presence_of :content }
  it { should validate_presence_of :post_date }
  it { should belong_to :post }
  it { should belong_to :author }
end
