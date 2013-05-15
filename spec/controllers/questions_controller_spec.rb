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

  describe "GET #new" do
    it "should render the :new view" do
      get :new
      response.should render_template :new
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "should create a new question" do
        expect{ post :create, question: { title: "asdasd", content: "ghhggh"} }.to change(Question, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "should not create a new question" do
        expect{ post :create, question: {title: "", content: ""} }.to_not change(Question, :count)
      end
    end
  end

  describe "GET #show" do
    it "should render the :show view" do
      get :show, id: @question
      response.should render_template :show
    end
  end

  describe "GET #edit" do
    it "should render the :edit view" do
      get :edit, id: @question
      response.should render_template :edit
    end
  end
end
