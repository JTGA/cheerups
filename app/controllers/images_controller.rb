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
    @image = Image.find(params[:id])
  end

  def show
    @image = Image.find(params[:id])
  end

  def create
    @image = Image.new(images_params)
    @image.save
  redirect_to @image

    if @image.save
    redirect_to @image
  else
    render 'new'
  end
end

def update
  @image = Image.find(params[:id])

  if @image.update(image_params)
    redirect_to @image
  else
    render 'edit'
  end
end


  private
  def imaages_params
    params.require(:image).permit(:uri, :description, :upvote, :downvote, :image)
  end
end
