class AddDataToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image, :string
    add_column :users, :nickname, :string
    add_column :users, :address, :string
    add_column :users, :zipcode, :integer
  end
end
