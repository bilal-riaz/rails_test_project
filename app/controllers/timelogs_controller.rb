# frozen_string_literal: true

class TimelogsController < ApplicationController
  def index
    @project = Project.find params[:project_id]
  end

  def show
    @timelog = Timelog.find(params[:id])
  end

  def new
    @timelog = Timelog.new
  end

  def create
    @timelog = Timelog.new(timelog_params)
    @timelog.project_id = params[:project_id]
    if @timelog.save
      redirect_to timelogs_path
    else
      render 'new'
    end
  end

  def edit
    @timelog = Timelog.find(params[:id])
  end

  def update
    @timelog = Timelog.find(params[:id])
    if @timelog.update(timelog_params)
      redirect_to @timelog
    else
      render 'edit'
    end
  end

  def destroy
    @timelog = Timelog.find(params[:id])
    @timelog.destroy
    redirect_to timelogs_path
  end

  private

  def timelog_params
    params.require(:timelog).permit(:no_of_hours_spent, :date)
  end
end
