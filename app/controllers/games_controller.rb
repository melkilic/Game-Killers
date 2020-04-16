class GamesController < ApplicationController
 def index

 end

 def
    @trivia = Trivium.all
 end

 
 def start_game
    @trivium = Trivium.find(params:id)
end