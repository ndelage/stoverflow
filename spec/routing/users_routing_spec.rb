require 'spec_helper'

describe '#Users routing' do
  it 'GET #new' do
    { :get => '/users/new' }.should route_to(
      :controller => 'users',
      :action     => 'new'
     )
  end

end
