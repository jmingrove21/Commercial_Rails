class Order < ApplicationRecord
    belongs_to :user, optional:true
    has_many :line_items, dependent: :nullify


    has_many :buy_item, through: :line_items
end
