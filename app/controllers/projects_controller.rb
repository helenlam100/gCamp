class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def edit
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project), notice: "Project was successfully created."
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path, notice: "Project updated successfully"
    else
      render :edit
    end

  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = "Project was successfully deleted."
    redirect_to projects_path
  end



  # def destroy
  #   @user = User.find(params[:id])
  #   @user.delete
  #   flash[:notice] = "User was successfully deleted."
  #   redirect_to users_path
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(
    :name,
    )
  end

end
