require 'spec_helper'

describe QuestionsController do
  #let(:question) { Question.create!(title: "Stuff", content: "Things are stuffs.") }
  before(:each) do
     @question = Question.create!(title: "Stuff", content: "Things are stuffs.")
  end

  describe "GET #index" do
    it "populates an array of questions" do
      get :index
      assigns(:questions).should eq([@question])
    end
    
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

end
