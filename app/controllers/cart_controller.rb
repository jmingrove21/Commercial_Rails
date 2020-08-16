class CartController < ApplicationController
    def index
        @cart=current_user.orders.find_by(status: 0)
    end

    def create
    
    end

    def update
        
    end
    
    def destroy
    
    end

    def new
    
    end
    
    def edit
    
    end

    def show
    
    end

    def modify
        @line_item=LineItem.find_by(id: params[:id])
        @item=Item.find_by(id: @line_item.item_id)
        target_num = (params[:type] == "plus") ? 1 : -1
        @line_item.update quantity: @line_item.quantity + target_num
        @line_item.update amount: @item.price * @line_item.quantity
        

        respond_to do |format|
			format.js
		end
    end

end
