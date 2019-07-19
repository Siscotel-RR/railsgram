class HomeController < ApplicationController
  def index
    get_image
  end

  private
    def get_image
      @images = Image.all.order('created_at DESC')
      @image = Image.new
    end
end
