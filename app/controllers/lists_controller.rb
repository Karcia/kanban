class ListsController < ApplicationController
  before_action :set_list, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @project = Project.find(params[:project_id])
    @list = @project.lists.build
  end

  def edit
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @list = @project.lists.build(list_params)
    if @list.save
      redirect_to project_path(@list.project.id), alert: 'List was successfully created.'
    else
      render :new
    end
  end

  def update
    if @list.update(list_params)
      redirect_to project_path(@list.project.id), alert: 'List was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to project_path(@list.project.id), alert: 'List was successfully destroyed.'
  end

  private
    def set_list
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :description)
    end
end
