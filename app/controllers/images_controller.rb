class ImagesController < ApplicationController
  def new
  end

  def create
    @version = Version.find_by_id(session[:current_version_id])
    @image = @version.images.new(image_params)
    respond_to do |format|
      if @image.save
        format.html { redirect_to @version, notice: 'image was successfully created.' }
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
    def image_params
      params.require(:image).permit(:image_src)
    end
end
