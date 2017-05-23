class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @lists = List.all
    @cards = Card.all
    @projects = Project.all
  end

  def show
  end

  def new
    @list = current_user.lists.build
  end

  def edit
  end

  def create
    @list = current_user.lists.build(list_params)
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
      params.require(:list).permit(:title, :description, :user_id, :project_id, :card_id, :card_title, :card_description)
    end
end
