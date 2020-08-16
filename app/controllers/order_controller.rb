class OrderController < ApplicationController
    def index
        @order=current_user.orders.where(status: 1)

    end

    def show
    
    end

    def create
    
    end

    def new
        @order=current_user.orders.where(status:0).first
        @order.update amount: @order.line_items.sum(:amount)
    end

    def update
        order=Order.find_by(id: params[:id])
        params[:order][:status] = 1
        order.update update_params
        redirect_to root_path
    end

    def edit
    
    end

    def destroy
    
    end

    private
    def update_params
        params.require(:order).permit(:name, :phone, :address1, :completed_at, :zipcode, :status)
    end

end
