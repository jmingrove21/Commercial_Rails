class OrderController < ApplicationController
    def index
        @order=current_user.orders.where(status: 1)

    end

    def show
    
    end

    def create
    
    end

    def new
    
    end

    def update
        byebug
        order=Order.find_by(id: params[:id])
        order.update name: params.require(:order)[:name], phone: params.require(:order)[:phone], address1: params.require(:order)[:address1], completed_at: params.require(:order)[:completed_at], zipcode: params.require(:order)[:zip], status: 1
        redirect_to root_path
    end

    def edit
    
    end

    def destroy
    
    end

end
