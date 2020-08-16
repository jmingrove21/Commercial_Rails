class OrderController < ApplicationController
    def index
    
    end

    def show
    
    end

    def create
    
    end

    def new
    
    end

    def update
        order=Order.find_by(id: params[:id])
        byebug
        order.update name: params.require(:order)[:name], phone: params.require(:order)[:phone], address1: params.require(:order)[:completed_at], completed_at: params.require(:order)[:completed_at], zipcode: params.require(:order)[:zip], status: 1
        redirect_to root_path
    end

    def edit
    
    end

    def destroy
    
    end

end
