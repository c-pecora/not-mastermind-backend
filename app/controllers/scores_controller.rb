class ScoresController < ApplicationController

	def index
		@scores = Score.all 
		render json: @scores
	end

	def create
		@score = Score.create(score: params[:score])
		render json: @score 
	end

	def show
		@score = Score.find(params[:id])
		render json: @score
	end

	def total
		@score = Score.total_score
		render json: @score
	end

end
