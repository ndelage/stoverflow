class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    render params[:action] #'index'
  end

  def new
    @question = Question.new
    render params[:action] #'new'
  end

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def show
    @question = Question.find(params[:id])
    render params[:action] #'show'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
