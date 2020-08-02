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
end
