class Order < ApplicationRecord
    belongs_to :user, optional:true


    has_many :line_items, dependent: :destroy
    has_many :buy_items, through: :line_items, source: :item
    
end

