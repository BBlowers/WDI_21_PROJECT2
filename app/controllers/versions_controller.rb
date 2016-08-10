class VersionsController < ApplicationController

  before_action :set_version, only: [:show, :edit, :update, :destroy]
  before_action :set_project
  before_action :check_user_owns_version, only: [:edit, :update, :destroy]

  def show
    @image = Image.new
    @comment = Comment.new
  end

  def new
    @version = Version.new
  end

  def edit
  end

  def create
    @version = @project.versions.new(version_params)

    respond_to do |format|
      if @version.save
        format.html { redirect_to project_path(@project), notice: 'Version was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @version.update(version_params)
        format.html { redirect_to project_version_path(@project, @version), notice: 'Version was successfully updated.' }
        format.json { render :show, status: :ok, location: @version }
      else
        format.html { render :edit }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @version.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@project), notice: 'Version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def check_user_owns_version
      if @version.project.user != current_user
        redirect_to project_version_path(@project, @version)
      end
    end

    def set_version
      @version = Version.find(params[:id])
    end

    def set_project
      @project = Project.find(params[:project_id])
    end

    def version_params
      params.require(:version).permit(:title, :content, :is_current, :main_image_id)
    end
end
