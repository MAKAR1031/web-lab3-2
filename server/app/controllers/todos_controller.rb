class TodosController < ApplicationController
  def index
    render json: TodoSerializer.new(Todo.all).serialized_json
  end
end
