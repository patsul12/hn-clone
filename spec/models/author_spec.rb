require 'rails_helper'

RSpec.describe Author, type: :model do
  it { should have_many :posts }
  it { should have_many :comments }
  it { should validate_confirmation_of :password }
end
