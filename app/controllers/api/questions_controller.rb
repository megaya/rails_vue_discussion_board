class Api::QuestionsController < ApplicationController
  def index
    render json: Question.all.map { |q| q.to_json }
  end

  def show
    render json: Question.find(params[:id]).to_json
  end

  def create
    q = Question.create(questions_params)
    render json: q.to_json
  end

	def update
    Question.update(questions_params)
    render json: {}
	end

  def destroy
    q = Question.find(params[:id])
    q.destroy
    render json: {}
  end

  private
  def questions_params
    params.require(:question).permit(:user_id, :category, :title, :description, :status)
  end
end
