class Api::UsersController < ApplicationController
  def index
    render json: User.all.map { |u| { value: u.id, text: u.name } }
  end
end
