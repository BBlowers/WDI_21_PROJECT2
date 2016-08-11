class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_image, only: [:destroy]
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
    @image.destroy
    respond_to do |format|
      format.html { redirect_to project_version_path(@project, @version), notice: 'Version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_image
      @image = Image.find(params[:id])
    end

    def set_version
      @version = Version.find(params[:version_id])
    end

    def set_project
      @project = Project.find(@version.project_id)
    end
    def image_params
      params.require(:image).permit(:remote_image_src_url, :image_src, :version_id)
    end
end
