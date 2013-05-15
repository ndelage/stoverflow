require 'spec_helper'

describe Vote do
  let(:vote) { Vote.create(:value => [-1,0,1,1,1].sample) }

  context "valid input" do

    it "should create a question instance given valid attributes" do
      question.should be_instance_of Question
    end

    it "should have a title" do
      question.title.should eq "My first question"
    end

    it "should have content" do
      question.content.should eq "Help me figure this out"
    end
  end

  context "invalid input" do
    let(:bad_question) { Question.create(title: "", content: "") }
    it "should not create a question instance given valid attributes" do
      bad_question.should_not be_valid
    end

    it "should not reach the database" do
      count = Question.all.count
      Question.create(title: "", content: "")
      Question.all.count.should eq count
    end

  end
end
