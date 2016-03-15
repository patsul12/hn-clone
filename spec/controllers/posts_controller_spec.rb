require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  # Test that create post,  posts to create action in controller
  it { should route(:post, '/posts').to(action: :create) }

  describe 'GET #index' do
    before { get :index }

    it { should render_template('index') }
  end

  describe 'GET #new' do
    before { get :new }

    it { should render_template('new') }
  end
end
