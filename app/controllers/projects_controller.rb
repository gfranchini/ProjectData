class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]


  def index
    if params[:search]
      @projects = Project.search(params[:search])
    else
      @projects = Project.order(updated_at: :desc)
    end

    #Instantiates an object only if user is logged in.
    if current_user
      @new_project = Project.new
      puts "A new object was created."
    end
  end

  def new
    @project = Project.new
  end


  def show
    @project = Project.find(params[:id])
    @environments = Project.find(params[:id]).environments
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description)
    end
end
