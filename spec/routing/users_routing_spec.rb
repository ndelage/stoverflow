require 'spec_helper'

describe '#Users routing' do
  it 'GET #new' do
    { :get => '/users/new' }.should route_to(
      :controller => 'users',
      :action     => 'new'
     )
  end
  it 'POST #create' do
    { :post => '/users' }.should route_to(
      :controller => 'users',
      :action     => 'create'
     )
  end
  it 'GET #show' do
    # pending
    { :get => '/users/foobar' }.should route_to(
      :controller => 'users',
      :action     => 'show',
      :id         => 'foobar'
     )
  end
end
