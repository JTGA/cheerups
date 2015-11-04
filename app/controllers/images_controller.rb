class ImagesController < ApplicationController
    before_action :authorize, except: [:index, :show]
  # rest of code below...

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def edit
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(images_params)
    @image.save
  redirect_to @image
  end



  private
  def imaages_params
    params.require(:image).permit(:uri, :description, :upvote, :downvote, :image)
  end
end
