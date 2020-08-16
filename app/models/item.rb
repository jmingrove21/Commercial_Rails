class Item < ApplicationRecord
    belongs_to :user, optional:true

    has_many :likes, dependent: :destroy
    has_many :images, dependent: :destroy   
    has_one :line_items 
    accepts_nested_attributes_for :images

end
