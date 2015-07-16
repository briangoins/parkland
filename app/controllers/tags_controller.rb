class TagsController < ApplicationController
    before_action :set_tag, only: [:show, :edit, :update, :destroy]
    authorize_resource
    
    def index
        @tags = Tag.all
    end

    def show
    end

    def new
        @tag = Tag.new
    end

    def create
        @tag = Tag.new(tag_params)
        if @tag.save
            redirect_to @tag, notice: 'Tag was successfully created.'
        else
            render :new
        end
    end

    private
        def set_tag
            @tag = Tag.find(params[:id])
        end

        def tag_params
            params.require(:tag).permit(:title, :description)
        end
end
