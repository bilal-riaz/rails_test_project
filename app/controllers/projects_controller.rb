# frozen_string_literal: true

class ProjectsController < ApplicationController
  def index
    @client = Client.find params[:client_id]
    @projects = Project.where(client_id: params[:client_id])
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @client = Client.find params[:client_id]
    @project.client_id = params[:client_id]
    if @project.save
      redirect_to client_projects_path(@client)
    else
      render 'new'
    end
  end

  def edit
    @client = Client.find(params[:client_id])
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.client_id = params[:client_id]
    if @project.update(project_params)
      redirect_to client_projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @client = Client.find params[:client_id]
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to client_projects_path(@client)
  end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
