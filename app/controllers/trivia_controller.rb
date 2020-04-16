class TriviaController < ApplicationController
    def new
        @trivium=Trivium.new
    end

    def create
        @trivium=Trivium.new(trivium_params)
        @trivium.save
        redirect_to trivium_path(@trivium)
    end

    def show
        @trivium=Trivium.find(params[:id])
    end

    def index
        @trivia=Trivium.all
    end

    def edit
        @trivium=Trivium.find(params[:id])
    end

    def update
        @trivium=Trivium.find(params[:id])
        @trivium.update(trivium_params)
        redirect_to trivium_path(@trivium)
    end

    private
    def trivium_params
        params.require(:trivium).permit(:title,:content)
    end
end