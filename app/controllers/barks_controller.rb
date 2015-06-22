class BarksController < ApplicationController
  def index
    @barks = Bark.includes(:user).order('barked_at DESC').all
  end

  def new
    @bark = Bark.new
  end

  def create
    @bark = Bark.new(bark_params)
    @bark.user = User.random

    if @bark.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def bark_params
    params.require(:bark).permit(:body, :barked_at)
  end
end
