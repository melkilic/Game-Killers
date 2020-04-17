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
       
            # flash[:result] = result
            # redirect_to("/games/pick/#{params[:id]}")
            
        end
        
    # end
   
    def result
        @game=Game.find(params[:id])
    end

    def show
    end

    def correct_answers
        @result =0
        params[:questions].each do |question_id,answer_id|
           @question = Question.find(question_id)
           @answer = Answer.find(answer_id)
           @solution =  @question.answers.find{|a| a.solution== true}
           if @solution.id== @answer.id
            @result +=10
           end
        end
        @game=Game.create({user_id: session[:user_id], trivium_id: @question.trivium.id, result: @result  })
        # byebug
        redirect_to("/games/result/#{@game.id}")

    end

    end
