class Api::RepliesController < ApplicationController
  def create
    r = Reply.create(replies_params)
    render json: r.to_json
  end

  def destroy
    reply = Reply.find(params[:id])
    reply.destroy
    render json: {}
  end

  private
  def replies_params
    params.require(:reply).permit(:user_id, :question_id, :text)
  end
end
