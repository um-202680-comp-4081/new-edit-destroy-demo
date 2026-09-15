# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.order(:due_date)
    render :index
  end

  def show
    @todo = Todo.find(params[:id])
    render :show
  end

  def new
    @todo = Todo.new
    render :new
  end

  def edit
    @todo = Todo.find(params[:id])
    render :edit
  end

  def create
    # create object
    @todo = Todo.new(params.require(:todo).permit(:title, :description, :due_date))
    # attempt to persist
    if @todo.save
      # if works, redirect to index
      flash[:success] = 'The todo was created'
      redirect_to todos_url
      # if not, redisplay form with error status
    else
      flash.now[:error] = 'The todo could not be created'
      render :new, status: :unprocessable_content
    end
  end

  def update
    # find object to update
    @todo = Todo.find(params[:id])
    # attempt to update
    if @todo.update(params.require(:todo).permit(:title, :description, :due_date))
      # if update, redirect to show
      flash[:success] = 'Todo was updated'
      redirect_to todo_url(@todo)
    else
      # if not, redisplay form with errors
      flash.now[:error] = 'Todo could not be updated'
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    # find object
    @todo = Todo.find(params[:id])
    # destroy object
    @todo.destroy!
    # redirect to index with status
    flash[:success] = 'Todo was removed'
    redirect_to todos_url, status: :see_other
  end
end
