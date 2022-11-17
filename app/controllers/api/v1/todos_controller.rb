class Api::V1::TodosController < ApplicationController

  def index
    @todos = Tudo.all
    render json: @todos
  end

  def show
    @todo = Tudo.find(params[:id])
    render json: @todo
  end

  def create
    @todo = Tudo.new(valid_params)
    if @todo.save
      render json: @todo, status: :ok
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def update
    @todo = Tudo.find(params[:id])
    if @todo
      @todo.update(valid_params)
      render json: {message: 'todo updated'}, status: :ok
    else
      render json: { error: 'unable to update Todo'}, status: 500
    end
      
  end

  def destroy
    @todo = Tudo.find(params[:id])
    if @todo
      @todo.destroy
      render json: {message: 'Todo destroyed'}, status: :ok
    else
      render json: { error: 'unable to destroy'}, status: 500
    end
      
  end

  private 

  def valid_params
    params.require(:todo).permit(:title, :status, :is_completed)
  end
end
