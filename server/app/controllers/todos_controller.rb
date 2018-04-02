class TodosController < ApplicationController
  def index
    render all_todo_json
  end

  def add
    todo = Todo.new(todo_params)
    if todo.save
      render all_todo_json
    else
      render json: {error: 'Invalid data'}
    end
  end

  def change_priority
    id = params.permit(:id)[:id]
    todo = Todo.find(id)
    todo.priority = !todo.priority
    if todo.save
      render all_todo_json
    else
      render json: {error: 'Todo not found'}
    end
  end

  def delete_all
    Todo.delete_all
    render json: {success: true}
  end

  private
  def all_todo_json
    {json: TodoSerializer.new(Todo.all).serialized_json}
  end

  def todo_params
    params.permit(:text, :priority)
  end
end
