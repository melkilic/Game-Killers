class QuestionsController < ApplicationController

  def show
    @question= Question.find(params[:id])
  end

  def index
    @questions= Question.all
  end
  
  def new
    @trivia = Trivium.all
    @question=Question.new
  end

  def create
    @question=Question.new(question_params)
    @question.save
    redirect_to new_answer_path
  end

  def edit
    @question=Question.find(params[:id])
  end

  def update
    @question=Question.find(params[:id])
    @question.update(question_params)
    redirect_to question_path(@question)
  end

  def destroy
    @question= Question.find(params[:id])
    @question.destroy

  end

  private
  def question_params
    params.require(:question).permit(:content,:image,:trivium_id)
  end
end