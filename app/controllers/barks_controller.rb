class BarksController < ApplicationController
  def index
    @barks = Bark.includes(:user).order('barked_at DESC').all
  end
end
