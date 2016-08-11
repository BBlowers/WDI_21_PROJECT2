class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_comment, only: [:destroy]
  before_action :set_version, only: [:create, :destroy]
  before_action :set_project, only: [:create, :destroy]
  def new
    @comment = Comment.new
  end

  def create
    @comment = @version.comments.new(comment_params)
    @comment.user_id = current_user.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to project_version_path(@project, @version), notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @version }
      else
        format.html { render :new }
        format.json { render json: @version.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to project_version_path(@project, @version), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.

    def set_comment
      @comment = Comment.find(params[:id])
    end
    def set_version
      @version = Version.find(params[:version_id])
    end
    def set_project
      @project = Project.find(@version.project_id)
    end
    def comment_params
      params.require(:comment).permit(:title, :content, :version_id)
    end

end
