class AnswersController < ApplicationController
    def index
        @answers=Answer.all
    end

    def show
       
        @answer=Answer.find(params[:id])
    end
    
    def new
        @questions=Question.all
        @answer=Answer.new
        @answers=Answer.all
    end

    def create
        @answer=Answer.new(answer_params)
        @answer.save
        redirect_to answer_path(@answer.id)
    end

    def edit
        @answer=Answer.find(params[:id])
    end

    def update
        @answer=Answer.find(params[:id])
        @answer.update(answer_params)
        redirect_to answer_path(@answer)
    end

    def destroy
        @answer=Answer.find(params[:id])
        @answer.destroy
    end

    private

    def answer_params
        params.require(:answer).permit(:content,:solution,:question_id)
    end
end