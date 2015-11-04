class CommentsController < ApplicationController
  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create(comment_params)
    redirect_to image_path(@image)
  end

    def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
