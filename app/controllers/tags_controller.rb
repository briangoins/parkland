class TagsController < ApplicationController
    authorize_resource
    
    def index
        @tags = Tag.all
    end
end
