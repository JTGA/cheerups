class CommentsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create(comment_params)
    redirect_to image_path(@image)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
