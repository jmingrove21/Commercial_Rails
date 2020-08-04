class ItemsController < ApplicationController
    before_action :check_user, only: %i(create, list, destroy, update)
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
        item=Item.find_by(id: params[:id])
        item.destroy
        redirect_to root_path
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
        @item=Item.find_by(id: params[:id])
    end

    def list
        @items=Item.where(user_id: params[:id])
        respond_to do |format|
			format.html
			format.js
		end
    end

    def makeline
        item=Item.find_by(id:params[:id])
        lineitem=LineItem.create(item_id: item.id, quantity: 1, order_id: current_user.orders.find_by(status: 0).id, amount: item.price)
        cart = current_user.orders.find_by(status: 0)
        cart.update amount: cart.amount + lineitem.amount
        redirect_to root_path
    end

    private
    def item_params
        params.require(:item).permit(:title, :body, :price, :user_id, images_attributes: [:image])
    end

    def line_params
    
    end
    def check_user
        redirect_to root_path if !current_user.present?
    end


end
