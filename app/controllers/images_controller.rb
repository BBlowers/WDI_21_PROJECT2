class ImagesController < ApplicationController
  before_action :set_version, only: [:create, :destroy]
  before_action :set_project, only: [:create, :destroy]

  def new
  end

  def create
    @image = @version.images.new(image_params)
    respond_to do |format|
      if @image.save
        format.html { redirect_to project_version_path(@project, @version), notice: 'image was successfully created.' }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private
    def set_version
      @version = Version.find(params[:version_id])
    end

    def set_project
      @project = Project.find(@version.project_id)
    end
    def image_params
      params.require(:image).permit(:image_src, :version_id)
    end
end
