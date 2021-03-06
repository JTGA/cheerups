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

  def about
  end

  def create
    @image = Image.new(images_params)
    @image.save

    if @image.save
    redirect_to @image
  else
    render 'new'
  end
end

def update
  @image = Image.find(params[:id])

  if @image.update(images_params)
    redirect_to @image
  else
    render 'edit'
  end
end

def destroy
  @image = Image.find(params[:id])
  @image.destroy

  redirect_to images_path
end


  private
  def images_params
    params.require(:image).permit(:uri, :description, :upvote, :downvote, :image, :upload)
  end
end
