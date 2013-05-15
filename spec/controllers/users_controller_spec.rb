require 'spec_helper'

describe UsersController do

  describe '#new' do
    it 'renders the new template' do
      get :new
      response.should render_template('new')
    end
  end

  describe '#create' do
    let(:user) = User.new

    it 'renders the new template' do
      post :create
      response.should render_template('create')
    end
  end

  describe '#show' do
    it 'renders the new template' do
      get :show, :id => 'foobar'
      response.should render_template('show')
    end
  end
end
