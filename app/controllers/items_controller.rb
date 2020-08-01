class ItemsController < ApplicationController
    def index
        @items=Item.all
        
    end
    def create
        # post=Post.create params.require(:post).permit(:title,:body,:author)
        item=Item.create item_params 
        redirect_to root_path
     end
    def update
    end
    def destroy
    end
    def new
        @item =Item.new
        3.times.each do
            @item.images.build
        end
    end
    def edit
    end
    def show
    end

    private
    def item_params
        params.require(:item).permit(:title, :body, :price, :user_id, images_attributes: [:image])
    end
end
