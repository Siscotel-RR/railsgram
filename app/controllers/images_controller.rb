class ImagesController < ApplicationController
    before_action :set_image, only: [:show, :edit, :update, :destroy]
    def index
        @images = Image.all.order('created_at DESC')
        @image = Image.new
    end

    def new
        @image = Image.new
    end

    def create
        # render plain: params[:image].inspect
        @image = Image.create(image_params) 
        if @image.save
            redirect_to root_path
        else
            render new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @image.update(image_params)
            redirect_to root_path
        else
            render edit
        end
    end

    def destroy
        if @image.destroy
            redirect_to images_path
        else

        end
    end

    private

    def image_params
        params.require(:image).permit(:description, :picture)
    end

    def set_image
        @image = Image.find params[:id]
    end
end
