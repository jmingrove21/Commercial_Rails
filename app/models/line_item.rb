class LineItem < ApplicationRecord
    belongs_to :order, optional: true

end
