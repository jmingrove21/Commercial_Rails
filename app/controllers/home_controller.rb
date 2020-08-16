class HomeController < ApplicationController
    def index
        @items=Item.all.order(created_at: :desc)
        if current_user.present?
            if current_user.orders.where(status: 0).first_or_create(address2: current_user.address, name: current_user.nickname, amount: 0,  zipcode: current_user.zipcode, status:0)
            end
        end
          
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
