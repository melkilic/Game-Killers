class GamesController < ApplicationController
    # def index
 
    # end

    def pick_game
        @trivia=Trivium.all
    end            


    def start_game
        @game=Game.new
        @trivium=Trivium.find(params[:id])
        @questions=@trivium.questions.sample(5)
        total = params[:solution]
        @result = flash[:result]
    end
    

    def create
         result =0
        params[:questions].each do |question_id,answer_id|
           @question = Question.find(question_id)
           @answer = Answer.find(answer_id)
           @solution =  @question.answers.find{|a| a.solution== true}
           if @solution.id== @answer.id
            result +=1
           end

        end

       
            flash[:result] = result
            redirect_to("/games/pick/#{params[:id]}")
        
        end

    end
