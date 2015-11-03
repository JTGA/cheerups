class ImagesController < ApplicationController
    before_action :authorize, except: [:index, :show]
  # rest of code below...

  def index
  end

  def new
  end

  def edit
  end

  def show
  end
end
