require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  # Test that create post,  posts to create action in controller
  it { should route(:post, '/posts').to(action: :create) }
  it { should route(:get, '/posts/1').to(action: :show, id: 1) }
  it { should route(:get, '/posts/1/edit').to(action: :edit, id: 1) }
  it { should route(:delete, '/posts/1').to(action: :destroy, id: 1) }
  describe 'GET #index' do
    before { get :index }

    it { should render_template('index') }
  end

  describe 'GET #new' do
    before { get :new }

    it { should render_template('new') }
  end
end
